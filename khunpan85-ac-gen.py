import slide_puzzle_gen

# Puzzle according to http://khunpan.de/khunpan-f.htm

init_state = [
    ["tv1", "tsq", "tsq", "to1"],
    ["tv1", "tsq", "tsq", "to2"],
    [None, "th1", "th1", None],
    ["to3", "th2", "th2", "tv4"],
    ["to4", "th3", "th3", "tv4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan85-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True,initial_tile="to1")

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))