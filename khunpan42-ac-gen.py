import slide_puzzle_gen

init_state = [
    ["th1", "th1", "th2", "th2"],
    [ None, "tsq", "tsq",  None],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "th3", "th3", "tv2"],
    ["to1", "to2", "to3", "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan42-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))