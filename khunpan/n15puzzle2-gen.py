import khunpan_gen

#Easy to solve

init_state = [
    ["t15", "t02", "t01", "t12"],
    ["t08", "t05", "t06", "t11"],
    ["t04", "t09", "t10", "t07"],
    ["t03", "t14", "t13", None]
]

target_state = {
    (1,4): None,  (2,4): "t01", (3,4): "t02", (4,4): "t03",
    (1,3): "t04", (2,3): "t05", (3,3): "t06", (4,3): "t07",
    (1,2): "t08", (2,2): "t09", (3,2): "t10", (4,2): "t11",
    (1,1): "t12", (2,1): "t13", (3,1): "t14", (4,1): "t15"
}

domain_name="n15puzzle2-gen"
problem_name="n15puzzle2-gen"
domain,problem=khunpan_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))