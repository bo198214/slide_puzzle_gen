import khunpan_gen

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(2, 4): "tsq", (3, 4): "tsq", (2, 5): "tsq", (3, 5): "tsq"}
# target_state = { (1,3): "to1"}

domain_name="khunpan01-gen"
problem_name="khunpan01-gen"
domain,problem=khunpan_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name+'-domain.pddl', 'w'))
print(problem, file=open(problem_name+'-problem.pddl', 'w'))