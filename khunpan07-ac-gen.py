import slide_puzzle_gen

init_state = [
    ["tv1",  None, "tv2", "tv3"],
    ["tv1",  None, "tv2", "tv3"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["to1", "to2", "to3", "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

domain_name="khunpan07-ac-gen"
problem_name="khunpan07-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state,adapted_counter=True)

print(domain, file=open(domain_name+'-domain.pddl', 'w'))
print(problem, file=open(problem_name+'-problem.pddl', 'w'))