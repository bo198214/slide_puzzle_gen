import slide_puzzle_gen

# Puzzle according to http://khunpan.de/khunpan-u.htm

init_state = [
    ["th1", "th1", "th2", "th2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to1", "th3", "th3", "to2"],
    ["to3",  None,  None, "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan36-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))