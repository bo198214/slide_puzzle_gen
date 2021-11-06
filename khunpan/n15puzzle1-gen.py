import khunpan_gen

# A bit more difficult to solve

init_state = [
    ["t15", "t14", "t13", "t12"],
    ["t11", "t10", "t09", "t08"],
    ["t07", "t06", "t05", None],
    ["t03", "t02", "t01", "t04"]
]

target_state = {
    (1,4): "t01", (2,4): "t02", (3,4): "t03", (4,4): "t04",
    (1,3): "t05", (2,3): "t06", (3,3): "t07", (4,3): "t08",
    (1,2): "t09", (2,2): "t10", (3,2): "t11", (4,2): "t12",
    (1,1): "t13", (2,1): "t14", (3,1): "t15", (4,1): None
}
#target_state = {(4,4):"t01"}

domain_name="n15puzzle1-gen"
problem_name="n15puzzle1-gen"
domain,problem=khunpan_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))