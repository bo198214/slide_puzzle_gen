import slide_puzzle_gen

init_state = [
    ["to1", "tsq", "tsq", "to2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1",  None, "tv3", "tv2"],
    ["to3",  None, "tv3", "to4"],
    ["th1", "th1","th2", "th2"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

domain_name="khunpan100-ac-gen"
problem_name="khunpan100-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state,adapted_counter=True,initial_tile="tsq")

print(domain, file=open(domain_name+'-domain.pddl', 'w'))
print(problem, file=open(problem_name+'-problem.pddl', 'w'))