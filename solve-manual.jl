using PDDL, REPL

function getc1()
    ret = ccall(:jl_tty_set_mode, Int32, (Ptr{Cvoid},Int32), stdin.handle, true)
    ret == 0 || error("unable to switch to raw mode")
    c = read(stdin, Char)
    ccall(:jl_tty_set_mode, Int32, (Ptr{Cvoid},Int32), stdin.handle, false)
    c
end

function getc2()
    t = REPL.TerminalMenus.terminal
    REPL.TerminalMenus.enableRawMode(t) || error("unable to switch to raw mode")
    c = Char(REPL.TerminalMenus.readKey(t.in_stream))
    REPL.TerminalMenus.disableRawMode(t)
    c
end

println("type w,e,s,n for move-w, move-e, move-s, move-n respectively and W,E,S,N for push-*")

domain = load_domain("sokoban-domain.pddl")
problem = load_problem("sokoban/sokoban02-problem.pddl")
plan_file_path = "solve-manual/sokoban/sokoban02-problem.txt"

state = initstate(domain,problem)

# Reading from plan file
println("Reading from " * plan_file_path)
for line in readlines(plan_file_path)
	println(line)
    global state = execute(domain,state,parse_pddl(line))
end

plan_file = open(plan_file_path, append=true)
println("Reading from stdin")
# Reading from keyboard
while true
	a = available(domain,state)
	for e in a
	   print(string(e.name)*" ")
	end
	println()
	d = getc2()
	if d == 'x' || d == 'q'
        break
	end
	found_action = false
	for e in a
		if (d in ['E', 'W', 'N', 'S'] && "push-"*lowercase(d) == string(e.name)) || (d in ['e','w','n','s'] && "move-"*d == string(e.name))
			
			token = "(" * string(e.name)
			for arg in e.args
			    token *= " " * string(arg)
			end
			token *= ")"
			
			println("Executing " * token)
			println(plan_file,token)
			global state = execute(domain,state,e)
			found_action = true
			break
		end
	end
	if ! found_action
	    println("ERROR: No such action!!!")
	end
end
	
close(plan_file)