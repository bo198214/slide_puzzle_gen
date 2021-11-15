using PDDL, REPL, LibNCurses


println("type w,e,s,n or use the cursor keys to move the sokoban")
println("Press q or x to leave the loop.")

domain_path = "sokoban-domain.pddl"
problem_path = ARGS[1]
plan_file_path = ARGS[2]

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


domain = load_domain(domain_path)
problem = load_problem(problem_path)

prev_state = 0
state = initstate(domain,problem)

# # Reading from plan file
# println("Reading from " * plan_file_path)
# for line in readlines(plan_file_path)
# 	println(line)
#     global state = execute(domain,state,parse_pddl(line))
# end

# plan_file = open(plan_file_path, append=true)
println("Reading from stdin")

scr = initscr()
keypad(scr, true);
noecho()



# Reading from keyboard
while true
	for fact in (prev_state == 0 ? [] : setdiff(prev_state.facts,state.facts))
		s = string(fact.name)
		if s == "wall_at" || s == "crate_at" || s == "sokoban_at"
			x = parse(Int64,string(fact.args[1])[2:end])
			y = parse(Int64,string(fact.args[2])[2:end])
			mvwaddch(scr,20-y,x,' ')
		end
	end
    for fact in problem.goal.args
        s = string(fact.name)
        if s == "crate_at"
			x = parse(Int64,string(fact.args[1])[2:end])
			y = parse(Int64,string(fact.args[2])[2:end])
			mvwaddch(scr,20-y,x,'.')
        end
    end
    sokoban = (0,0)
	for fact in (prev_state == 0 ? state.facts : setdiff(state.facts,prev_state.facts))
		s = string(fact.name)
		if s == "wall_at" || s == "crate_at" || s == "sokoban_at"
			x = parse(Int64,string(fact.args[1])[2:end])
			y = parse(Int64,string(fact.args[2])[2:end])
			if s == "wall_at"
				mvwaddch(scr,20-y,x,'#')
			elseif s == "crate_at"
				mvwaddch(scr,20-y,x,'$')
			elseif s == "sokoban_at"
			    sokoban = (20-y,x)
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
    part = get(keymapping,dn, "nix")
	for e in a
		if occursin(part,string(e.name))
			
			token = "(" * string(e.name)
			for arg in e.args
			    token *= " " * string(arg)
			end
			token *= ")"
			
			# println("Executing " * token)
			# println(plan_file,token)
			global prev_state = state
			global state = execute(domain,state,e)

			found_action = true
			break
		end
	end
end

#close(plan_file)
endwin()