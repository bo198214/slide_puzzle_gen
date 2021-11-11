import slide_puzzle_gen

# The standard Khunpan constellation, best solution in adapted counting is 79 moves

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [ None,  "th",  "th",  None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}
# target_state = { (1,3): "to1"}

name="khunpan01-ac-gen"
domain,problem=slide_puzzle_gen.domain_problem(name,name,init_state,target_state,adapted_counter=True, initial_tile="to1")

print(domain, file=open(name+'-domain.pddl', 'w'))
print(problem, file=open(name+'-problem.pddl', 'w'))