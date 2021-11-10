import slide_puzzle_gen

# Puzzle according to http://khunpan.de/khunpan-f.htm

init_state = [
    [ None, "tsq", "tsq",  None],
    ["to1", "tsq", "tsq", "to2"],
    ["tv1", "to3", "to4", "tv2"],
    ["tv1", "th1", "th1", "tv2"],
    ["th2", "th2", "th3", "th3"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan93-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True,initial_tile="th2")

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))