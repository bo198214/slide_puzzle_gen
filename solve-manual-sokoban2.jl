#!/usr/bin/env julia
using PDDL, REPL, LibNCurses

if length(ARGS) == 0
    println("""You need to specify at least 1 argument: the Sokoban problem file.
The Sokoban domain file is assumed to be sokoban-domain.pddl
A second argument could be a plan file.
If there is a third argument then the plan file will be replayed.
Without a third argument the actions of the plan file are executed (if the plan file exists)
and after that your own actions are recorded in this file.
""")
    exit(1)
end

println("Press q or x to leave the loop.")

domain_path = "sokoban2-domain.pddl"
problem_path = ARGS[1]

if length(ARGS) >= 2
    plan_file_path = ARGS[2]
else
    println("No plan file specified, not recording.")
end

play = false
if length(ARGS) >= 3
    play = true
    println("Re-playing " * plan_file_path)
else
    println("type w,e,s,n or use the cursor keys to move the sokoban")
end

keymapping = Dict(
    KEY_DOWN => "-s",
    Int('s') => "-s",
    KEY_UP => "-n",
    Int('n') => "-n",
    KEY_LEFT => "-w",
    Int('w') => "-w",
    KEY_RIGHT => "-e",
    Int('e') => "-e"
)

println("Loading game ...")
domain = load_domain(domain_path)
problem = load_problem(problem_path)
prev_state = 0
state = initstate(domain,problem)

coords_arg(arg) = (s -> parse(Int64,s)).(split(string(arg),"-")[2:end])
coords(fact) = coords_arg(fact.args[1])

# calculating xmax ymax
xcoords = []
ycoords = []
for loc in problem.objects
    (x,y) = coords_arg(loc)
    push!(xcoords,x)
    push!(ycoords,y)
end
xmax = max(xcoords...)
xmin = min(xcoords...)
ymax = max(ycoords...)
ymin = min(ycoords...)
yoff = ymax + 1

# Reading from plan file
if @isdefined(plan_file_path)
    actions = filter(a -> ! startswith(a,";"),readlines(plan_file_path))
    if ! play
        if isfile(plan_file_path)
            println("Reading from " * plan_file_path)
            for line in actions
                startswith(line,";") && continue
                global state = execute(domain,state,parse_pddl(line))
            end
        end
        plan_file = open(plan_file_path, append=true)
        println("Appending to " * plan_file_path)
    end
end

scr = initscr()
#leaveok(scr, false)
#echo -e '\e[ q' #makes the cursor solid
#echo -e '\e[?12l' #stops blinking
#echo -e '\e[0q' #stops blinking works also with numbers 0..6
keypad(scr, true);
noecho()

goalcoordinates = []
goalsokoban = 0

for x in xmin-1:xmax+1
    for y in ymin-1:ymax+1
        mvwaddch(scr,yoff-y,x,'#')
    end
end

for xy in problem.objects
    (x,y) = coords_arg(xy)
    mvwaddch(scr,yoff-y,x,' ')
end
for fact in problem.goal.args
    s = string(fact.name)
    if s == "crate_at"
        (x,y) = coords(fact)
        mvwaddch(scr,yoff-y,x,'.')
        push!(goalcoordinates,(x,y))
    elseif s == "sokoban_at"
        (x,y) = coords(fact)
        global goalsokoban = (x,y)
        mvwaddch(scr,yoff-y,x,'o')
    end
end




# Reading from keyboard
while true
    for fact in (prev_state == 0 ? [] : setdiff(prev_state.facts,state.facts))
        s = string(fact.name)
        if s == "wall_at" || s == "crate_at" || s == "sokoban_at"
            (x,y) = coords(fact)
            if (x,y) in goalcoordinates
                mvwaddch(scr,yoff-y,x,'.')
            elseif goalsokoban != 0 && (x,y) == goalsokoban
                mvwaddch(scr,yoff-y,x,'o')
            else
                mvwaddch(scr,yoff-y,x,' ')
            end
        end
    end
    sokoban = (0,0)
    for fact in (prev_state == 0 ? state.facts : setdiff(state.facts,prev_state.facts))
        s = string(fact.name)
        if s == "wall_at" || s == "crate_at" || s == "sokoban_at"
            (x,y) = coords(fact)
            if s == "wall_at"
                mvwaddch(scr,yoff-y,x,'#')
            elseif s == "crate_at"
                if (x,y) in goalcoordinates
                    mvwaddch(scr,yoff-y,x,'*')
                else
                    mvwaddch(scr,yoff-y,x,'$')
                end
            elseif s == "sokoban_at"
                sokoban = (yoff-y,x)
            end
        end
    end
    wmove(scr,sokoban[1],sokoban[2])
    a = available(domain,state)
    # for e in a
    #    print(string(e.name)*" ")
    # end
    # println()
    dn = getch()
    if dn == Int('x') || dn == Int('q')
        break
    end
    if play
        global prev_state = state
        if length(actions) > 0
            global state = execute(domain,state,parse_pddl(popfirst!(actions)))
        else
            break
        end
    else
        part = get(keymapping,dn, "nix")
        for e in a
            if endswith(string(e.name),part)

                token = "(" * string(e.name)
                for arg in e.args
                    token *= " " * string(arg)
                end
                token *= ")"

                if @isdefined(plan_file)
                    println(plan_file,token)
                end
                global prev_state = state
                global state = execute(domain,state,e)

                found_action = true
                break
            end
        end
    end
end

endwin()

if @isdefined(plan_file)
    println("Writing " * plan_file_path)
    close(plan_file)
end