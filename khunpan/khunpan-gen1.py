import khunpan_gen

# tile_types = {
#     'tile_o': {(1,1)},
#     'tile_v': {(1, 1), (1, 2)},
#     'tile_h': {(1, 1), (2, 1)},
#     'tile_q': {(1, 1), (1, 2), (2, 1), (2, 2)}
# }
#
# tiles_type_name = {
#     "to1": 'tile_o',
#     "to2": 'tile_o',
#     "to3": 'tile_o',
#     "to4": 'tile_o',
#     "tv1": 'tile_v',
#     "tv2": 'tile_v',
#     "tv3": 'tile_v',
#     "tv4": 'tile_v',
#     "th":  'tile_h',
#     "tsq": 'tile_q'
# }

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {(2, 4): "tsq", (3, 4): "tsq", (2, 5): "tsq", (3, 5): "tsq"}
# target_state = { (1,3): "to1"}

max_count=80
domain,problem=khunpan_gen.domain_problem(init_state,target_state,max_count=max_count)

print(domain, file=open(f'khunpan-gen-domain{str(max_count) if max_count is not None else ""}.pddl', 'w'))
print(problem, file=open(f'khunpan-gen-problem{str(max_count) if max_count is not None else ""}.pddl', 'w'))