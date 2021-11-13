import slide_puzzle_gen

# levels in KhunPhanDroid app

init_states = {}

init_states["00"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to5",  None,  None, "to6"],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

# Khunpan standard constellation, best solution in normal counting is 112 moves
# Also level 1 in KhunPhanDroid app
init_states["01"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

init_states["02"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to1", "tv3", "tv4", "to2"],
    ["to3", "tv3", "tv4", "to4"],
    ["th1", "th1", "th2", "th2"],
    ["tv5", "th3", "th3", "tv6"],
    ["tv5", "th4", "th4", "tv6"],
    [None,  "th5", "th5", None]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

for key in sorted(init_states.keys()):
    name = "khunpan-droid"+key
    domain, problem = slide_puzzle_gen.domain_problem(name, name, init_states[key], target_state)

    print(domain, file=open("khunpan/" + name + '-domain.pddl', 'w'))
    print(problem, file=open("khunpan/" + name + '-problem.pddl', 'w'))