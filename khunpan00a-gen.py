import slide_puzzle_gen

# level 0 in KhunPhanDroid app

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to5",  None,  None, "to6"],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(1,5):["to1","to2","to3","to4","to5","to6"]}

name="khunpan00a-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))