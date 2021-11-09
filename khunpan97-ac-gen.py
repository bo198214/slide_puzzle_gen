import slide_puzzle_gen

init_state = [
    [None , "tsq", "tsq", None],
    ["to1", "tsq", "tsq", "to4"],
    ["tv1", "th1", "th1", "tv2"],
    ["tv1", "to2", "to3", "tv2"],
    ["th2", "th2", "th3", "th3"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

domain_name="khunpan97-ac-gen"
problem_name="khunpan97-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state,adapted_counter=True,initial_tile="th1")

print(domain, file=open(domain_name+'-domain.pddl', 'w'))
print(problem, file=open(problem_name+'-problem.pddl', 'w'))