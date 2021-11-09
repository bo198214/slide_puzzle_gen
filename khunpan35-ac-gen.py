import slide_puzzle_gen

init_state = [
    [ None, "to1", "to2",  None],
    ["to3", "th1", "th1", "to4"],
    ["th2", "th2", "tv1", "tv2"],
    ["tsq", "tsq", "tv1", "tv2"],
    ["tsq", "tsq", "th3", "th3"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan35-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))