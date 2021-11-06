import khunpan_gen

# A bit more difficult to solve

init_state = [
    ["t15", "t14", "t13", "t12"],
    ["t11", "t10", "t09", "t08"],
    ["t07", "t06", "t05", "t04"],
    ["t03", "t02", "t01", None]
]

target_state = {
    (1,1): "t01", (2,1): "t02", (3,1): "t03", (4,1): "t04",
    (1,2): "t05", (2,2): "t06", (3,2): "t07", (4,2): "t08",
    (1,3): "t09", (2,3): "t10", (3,3): "t11", (4,3): "t12",
    (1,4): "t13", (2,4): "t14", (3,4): "t15", (4,4): None
}
#target_state = {(4,4):"t01"}

domain_name="n15puzzle1-gen"
problem_name="n15puzzle1-gen"
domain,problem=khunpan_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))