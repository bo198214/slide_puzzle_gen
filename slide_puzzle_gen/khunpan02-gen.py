import slide_puzzle_gen

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to1", "tv3", "tv4", "to2"],
    ["to3", "tv3", "tv4", "to4"],
    ["th1", "th1", "th2", "th2"],
    ["tv5", "th3", "th3", "tv6"],
    ["tv5", "th4", "th4", "tv6"],
    [None,  "th5", "th5", None]
]

target_state = {
    (2,2): "tsq", (3,2): "tsq", (2,1): "tsq", (3,1): "tsq"
}

domain_name="khunpan02-gen"
problem_name="khunpan02-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))