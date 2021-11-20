#!/usr/bin/env julia
using PDDL, REPL, LibNCurses, ArgParse

function parsed_args()
	settings = ArgParseSettings(
		description="""
	This program is to interactively find a plan for the given Sokoban problem. Per default the domain file "sokoban-domain.pddl" is used,
	but the only assumption is that the actions ends in -n (north), -w (west), -e, -s (unfortunately different from the sokoban standard notation
	which is lrduLRDU).

	You can save your plan if you specified a plan file after -w.
	You can use that option also to continue a started session, because it executes all actions that it finds in the plan, before
	turning control to you.
	You can also convert Sokoban moves (lrduLRDU) into PDDL actions (its move-n, move-s, move-w, move-e and push-n, push-s, push-w, push-e in sokoban-domain.pddl).
""",
		commands_are_required = false
	)
	@add_arg_table settings begin
		"--domain-file"
			help = "The path to the domain file"
			default = "sokoban-domain.pddl"
		"problem_file"
			help = "The path to the problem file"
			required = true
		"-n", "--no-recording"
			action = :command
		"-r", "--replay-file"
			help = "Use the given file to replay the plan. Press space to advance step by step in the plan."
			action = :command
		"--execute-append-file", "-w"
			help = "Use the same file for first executing it's actions and the append your actions."
			action = :command
		"convert-sp"
			help = "Convert from sokoban actions to pddl actions"
			action = :command
		"convert-ps"
			help = "Convert from pddl actions to sokoban actions"
			action = :command
	end
	@add_arg_table settings["replay-file"] begin
		"plan-file"
			help="The plan file"
			required = true
		"--pddl"
			help="Save the actions in PDDL format"
		"--sokoban"
			help="Save the actions in Sokoban format (lrdu for moving, LRDU for pushing)"
	end
	@add_arg_table settings["execute-append-file"] begin
		"plan-file"
			help="The plan file"
			required = true
		"--pddl"
			help="Save the actions in PDDL format"
		"--sokoban"
			help="Save the actions in Sokoban format (lrdu for moving, LRDU for pushing)"
	end
# TODO
# 	@add_arg_table settings["convert-sp"] begin
# 		"sokoban-file"
# 		    required = true
# 		"pddl-file"
# 		    required = true
# 	end
# 	@add_arg_table settings["convert-ps"] begin
# 		"pddl-file"
# 		    required = true
# 		"sokoban-file"
# 		    required = true
# 	end
	args = parse_args(ARGS, settings)
	return args
end

args = parsed_args()

domain_path = args["domain-file"]
problem_path = args["problem_file"]
play = false

if args["%COMMAND%"] == "replay-file"
    plan_file_path = args["replay-file"]["plan-file"]
	play = true
	println("Press space to advance one step. Press q or x to leave the loop.")
elseif args["%COMMAND%"] == "execute-append-file"
    plan_file_path = args["execute-append-file"]["plan-file"]
	println("Press q (not saving the plan file) or x (saving the plan file) to leave the loop.")
else
    println("No plan file specified, not recording.")
	println("Press q or x to leave the loop.")
end

if play
    println("Re-playing " * plan_file_path)
else
    println("Use lrudLRUD or the cursor keys to move the sokoban and push crates.")
end

keymapping = Dict(
    KEY_DOWN => "-s",
    Int('d') => "-s",
    Int('D') => "-s",
    KEY_UP => "-n",
    Int('u') => "-n",
    Int('U') => "-n",
    KEY_LEFT => "-w",
    Int('l') => "-w",
    Int('L') => "-w",
    KEY_RIGHT => "-e",
    Int('r') => "-e",
    Int('R') => "-e",
)

println("Loading game ...")
domain = load_domain(domain_path)
problem = load_problem(problem_path)
prev_state = 0
state = initstate(domain,problem)

coord(s) = parse(Int64,string(s)[2:end])
coords(fact) = (coord(fact.args[1]),coord(fact.args[2]))

# calculating xmax ymax
xcoords = []
ycoords = []
for s in string.(problem.objects)
    if startswith(s,"v")
        push!(ycoords,coord(s))
    elseif startswith(s,"h")
        push!(xcoords,coord(s))
    end
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
start_color()
WALL_COLOR = 1
init_pair(WALL_COLOR, COLOR_WHITE, COLOR_WHITE)
GOAL_COLOR = 2
init_pair(GOAL_COLOR, COLOR_WHITE, COLOR_RED)
SOKOBAN_GOAL_COLOR = 3
init_pair(SOKOBAN_GOAL_COLOR, COLOR_WHITE, COLOR_CYAN)


goalcoordinates = []
goalsokoban = 0

for fact in problem.goal.args
    s = string(fact.name)
    if s == "crate_at"
        (x,y) = coords(fact)
        attron(COLOR_PAIR(GOAL_COLOR));
        mvwaddch(scr,yoff-y,x,' ')
        attroff(COLOR_PAIR(GOAL_COLOR));
        push!(goalcoordinates,(x,y))
    elseif s == "sokoban_at"
        (x,y) = coords(fact)
        global goalsokoban = (x,y)
        attron(COLOR_PAIR(SOKOBAN_GOAL_COLOR));
        mvwaddch(scr,yoff-y,x,' ')
        attroff(COLOR_PAIR(SOKOBAN_GOAL_COLOR));
    end
end

dn = nothing
# Reading from keyboard
while true
    for fact in (prev_state == 0 ? [] : setdiff(prev_state.facts,state.facts))
        s = string(fact.name)
        if s == "wall_at" || s == "crate_at" || s == "sokoban_at"
            (x,y) = coords(fact)
            if (x,y) in goalcoordinates
                attron(COLOR_PAIR(GOAL_COLOR));
                mvwaddch(scr,yoff-y,x,' ')
                attroff(COLOR_PAIR(GOAL_COLOR));
            elseif goalsokoban != 0 && (x,y) == goalsokoban
                attron(COLOR_PAIR(SOKOBAN_GOAL_COLOR));
                mvwaddch(scr,yoff-y,x,' ')
                attroff(COLOR_PAIR(SOKOBAN_GOAL_COLOR));
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
                attron(COLOR_PAIR(WALL_COLOR));
                mvwaddch(scr,yoff-y,x,'#')
                attroff(COLOR_PAIR(WALL_COLOR));
            elseif s == "crate_at"
                if (x,y) in goalcoordinates
                    attron(COLOR_PAIR(GOAL_COLOR));
                    mvwaddch(scr,yoff-y,x,'$')
                    attroff(COLOR_PAIR(GOAL_COLOR));
                    #mvwaddch(scr,yoff-y,x,'*')
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
    if satisfy(domain,state,problem.goal)
        mvwaddstr(scr,0,0,"YOU WON!")
    end
    global dn = getch()
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

if @isdefined(plan_file) && dn == 'x'
    println("Writing " * plan_file_path)
    close(plan_file)
end
