import slide_puzzle_gen

# Puzzle according to http://khunpan.de/khunpan-f.htm

init_state = [
    ["to1", "tsq", "tsq", "to2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1",  None, "tv3", "tv2"],
    ["to3",  None, "tv3", "to4"],
    ["th1", "th1","th2", "th2"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan100-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True,initial_tile="tsq")

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))