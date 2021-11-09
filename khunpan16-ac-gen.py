import slide_puzzle_gen

init_state = [
    ["tv1", "tv2", "tv3", "tv4"],
    ["tv1", "tv2", "tv3", "tv3"],
    [ None, "tsq", "tsq",  None],
    ["to1", "tsq", "tsq", "to2"],
    ["to3", "th" , "th" , "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan16-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))