import slide_puzzle_gen

# Khunpan standard constellation, best solution in normal counting is 112 moves
# Also level 1 in KhunPhanDroid app

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

name="khunpan01-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state)

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))