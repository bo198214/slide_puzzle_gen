import khunpan_gen

init_state = [
    ["t15", "t02", "t01", "t12"],
    ["t08", "t05", "t06", "t11"],
    ["t04", "t09", "t10", "t07"],
    ["t03", "t14", "t13", None]
]

target_state = {
    (1,1): None,  (2,1): "t01", (3,1): "t02", (4,1): "t03",
    (1,2): "t04", (2,2): "t05", (3,2): "t06", (4,2): "t07",
    (1,3): "t08", (2,3): "t09", (3,3): "t10", (4,3): "t11",
    (1,4): "t12", (2,4): "t13", (3,4): "t14", (4,4): "t15"
}

domain_name="n15puzzle"
problem_name="n15puzzle2"
domain,problem=khunpan_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))