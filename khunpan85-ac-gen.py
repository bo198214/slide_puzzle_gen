import slide_puzzle_gen

init_state = [
    ["tv1", "tsq", "tsq", "to1"],
    ["tv1", "tsq", "tsq", "to2"],
    [None, "th1", "th1", None],
    ["to3", "th2", "th2", "tv4"],
    ["to4", "th3", "th3", "tv4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

domain_name="khunpan85-ac-gen"
problem_name="khunpan85-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state,adapted_counter=True,initial_tile="to1")

print(domain, file=open(domain_name+'-domain.pddl', 'w'))
print(problem, file=open(problem_name+'-problem.pddl', 'w'))