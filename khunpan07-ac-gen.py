import slide_puzzle_gen

# Puzzle according to http://khunpan.de/khunpan-u.htm

init_state = [
    ["tv1",  None, "tv2", "tv3"],
    ["tv1",  None, "tv2", "tv3"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["to1", "to2", "to3", "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan07-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))