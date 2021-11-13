import slide_puzzle_gen


init_states = {}

# Puzzles according to http://khunpan.de/khunpan-u.htm

init_states["007"] = [
    ["tv1",  None, "tv2", "tv3"],
    ["tv1",  None, "tv2", "tv3"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["tv4", "tsq", "tsq", "tv5"],
    ["to1", "to2", "to3", "to4"]
]
init_states["010"] = [
    [ None, "th1", "th1",  None],
    ["th2", "th2", "th3", "th3"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to1", "to2", "to3", "to4"]
]
init_states["016"] = [
    ["tv1", "tv2", "tv3", "tv4"],
    ["tv1", "tv2", "tv3", "tv3"],
    [ None, "tsq", "tsq",  None],
    ["to1", "tsq", "tsq", "to2"],
    ["to3", "th" , "th" , "to4"]
]
init_states["029"] = [
    [ None, "th1", "th1",  None],
    ["th2", "th2", "th3", "th3"],
    ["to1", "tsq", "tsq", "to2"],
    ["to3", "tsq", "tsq", "to4"],
    ["th4", "th4", "th5", "th5"]
]
init_states["032"] = [
    ["to1", "tsq", "tsq", "to2"],
    ["to3", "tsq", "tsq", "to4"],
    [ None, "th1", "th1",  None],
    ["th2", "th2", "th3", "th3"],
    ["th4", "th4", "th5", "th5"]
]
init_states["035"] = [
    [ None, "to1", "to2",  None],
    ["to3", "th1", "th1", "to4"],
    ["th2", "th2", "tv1", "tv2"],
    ["tsq", "tsq", "tv1", "tv2"],
    ["tsq", "tsq", "th3", "th3"]
]
init_states["036"] = [
    ["th1", "th1", "th2", "th2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["to1", "th3", "th3", "to2"],
    ["to3",  None,  None, "to4"]
]
init_states["042"] = [
    ["th1", "th1", "th2", "th2"],
    [ None, "tsq", "tsq",  None],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "th3", "th3", "tv2"],
    ["to1", "to2", "to3", "to4"]
]

# The default/standard khunpan

init_states["079"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [ None,  "th",  "th",  None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

# Puzzles according to http://khunpan.de/khunpan-f.htm

init_states["085"] = [
    ["tv1", "tsq", "tsq", "to1"],
    ["tv1", "tsq", "tsq", "to2"],
    [None, "th1", "th1", None],
    ["to3", "th2", "th2", "tv4"],
    ["to4", "th3", "th3", "tv4"]
]
init_states["093"] = [
    [ None, "tsq", "tsq",  None],
    ["to1", "tsq", "tsq", "to2"],
    ["tv1", "to3", "to4", "tv2"],
    ["tv1", "th1", "th1", "tv2"],
    ["th2", "th2", "th3", "th3"]
]
init_states["094"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None , "th1", "th1", None],
    ["to1", "to2", "to3", "to4"],
    ["th2", "th2", "th3", "th3"]
]
init_states["097"] = [
    [None , "tsq", "tsq", None],
    ["to1", "tsq", "tsq", "to4"],
    ["tv1", "th1", "th1", "tv2"],
    ["tv1", "to2", "to3", "tv2"],
    ["th2", "th2", "th3", "th3"]
]
init_states["098"] = [
    ["to1", "tsq", "tsq", "to2"],
    ["to3", "tsq", "tsq", "tv2"],
    ["tv1", "th1", "th1", "tv2"],
    ["tv1", "th2", "th2", "to4"],
    [None , "th3", "th3",  None]
]
init_states["100"] = [
    ["to1", "tsq", "tsq", "to2"],
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1",  None, "tv3", "tv2"],
    ["to3",  None, "tv3", "to4"],
    ["th1", "th1","th2", "th2"]
]
init_states["101"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None , "th1", "th1",  None],
    ["to1", "th2", "th2", "to2"],
    ["to3" ,"th3", "th3", "to4"]
]
init_states["104"] = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None , "th1", "th1", None],
    ["th2", "th2", "th3", "th3"],
    ["to1", "to2", "to3", "to4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}

for key in sorted(init_states.keys()):
    name="khunpan-exercise" + key
    domain,problem=slide_puzzle_gen.domain_problem(name,name,init_states[key],target_state,adapted_counter=True)
    print(domain, file=open('khunpan/'+name+'-domain.pddl', 'w'))
    print(problem, file=open('khunpan/'+name+'-problem.pddl', 'w'))