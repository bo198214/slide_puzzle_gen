#!/usr/bin/env julia
using PDDL, REPL, LibNCurses


if length(ARGS) <= 1
    println("""You need to specify at least 2 arguments: the domain and the problem file.
A third argument could be a plan file.
If there is a fourth argument then the plan file will be replayed.
Without a fourth argument the actions of the plan file are executed (if the plan file exists)
and after that your own actions are recorded in this file.
""")
    exit(1)
end

println("Press q or x to leave the loop.")

domain_path = ARGS[1]
problem_path = ARGS[2]

if length(ARGS) >= 3
    plan_file_path = ARGS[3]
else
    println("No plan file specified, not recording.")
end

play = false
if length(ARGS) >= 4
    play = true
    println("Re-playing " * plan_file_path)
else
    println("press the character of the tile then use a cursor key to move the tile")
end

keymapping = Dict(
    KEY_DOWN => "-s",
    KEY_UP => "-n",
    KEY_LEFT => "-w",
    KEY_RIGHT => "-e",
)

println("Loading game ...")
domain = load_domain(domain_path)
problem = load_problem(problem_path)
prev_state = 0
state = initstate(domain,problem)

coord(s) = parse(Int64,string(s)[2:end])
coords2(fact) = (coord(fact.args[1]),coord(fact.args[2]))
coords3(fact) = (coord(fact.args[2]),coord(fact.args[3]))

# calculating xmax ymax
xcoords = []
ycoords = []
tiles = []
for fact in state.facts
    s = string(fact.name)
    if s == "at"
        (x,y) = coords3(fact)
        push!(tiles,string(fact.args[1]))
        push!(xcoords,x)
        push!(ycoords,y)
    elseif s == "empty"
        (x,y) = coords2(fact)
        push!(xcoords,x)
        push!(ycoords,y)
    end
end
xmax = max(xcoords...)
xmin = min(xcoords...)
ymax = max(ycoords...)
ymin = min(ycoords...)
yoff = ymax + 1

sort!(tiles)
start_charn = Int('1') - 1
num_from_tile(tile) = begin for i in 1:length(tiles); if tile == tiles[i]; return i+start_charn; end; end; return -1; end
tile_from_num(c) = tiles[c-start_charn]

# Reading from plan file
if @isdefined plan_file_path
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
    for fact in (prev_state == 0 ? state.facts : setdiff(state.facts,prev_state.facts))
        s = string(fact.name)
        if s == "at"
            tile = string(fact.args[1])
            (x,y) = coords3(fact)
            mvwaddch(scr,yoff-y,x,num_from_tile(tile))
        elseif s == "empty"
            (x,y) = coords2(fact)
            mvwaddch(scr,yoff-y,x,' ')
        end
    end
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
        tile = tile_from_num(dn)
        part = get(keymapping,dn, "nix")
        for e in a
            if occursin(part,string(e.name))

                token = "(" * string(e.name)
                for arg in e.args
                    token *= " " * string(arg)
                end
                token *= ")"

                if @isdefined plan_file
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

if @isdefined plan_file
    println("Writing " * plan_file_path)
    close(plan_file)
end
