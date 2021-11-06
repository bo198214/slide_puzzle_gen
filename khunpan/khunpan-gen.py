xdim=4
ydim=5
max_count=None
max_count=80
with_counter=max_count is not None


init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None,  "th",  "th",   None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {  (2,4): "tsq",   (3,4): "tsq",   (2,5): "tsq",   (3,5): "tsq" }
#target_state = { (1,3): "to1"}


def removed_added_on_move(tile, dx, dy):
    trans = {(x+dx,y+dy) for (x,y) in tile}
    return tile - trans, trans-tile


def types_from_init_state(init_state):
    tile_positions = {}
    for n in range(len(init_state)):
        row = init_state[n]
        for i in range(len(row)):
            tile = row[i]
            if tile is not None:
                if tile not in tile_positions:
                    tile_positions[tile] = []
                tile_positions[tile].append((i+1,n+1))

    tt_by_tts = {}
    tts_by_tn = {}
    for tile,positions in tile_positions.items():
        xs = [x for (x,y) in positions]
        ys = [y for (x,y) in positions]
        xmin = min(xs)
        ymin = min(ys)
        positions_list = []
        for i in range(len(positions)):
            p = positions[i]
            positions_list.append( (p[0] - xmin + 1, p[1] - ymin + 1) )
        positions_list.sort()
        key = str(positions_list)
        tt_by_tts[key] = set(positions_list)
        tts_by_tn[tile] = key

    mapping = {}
    c = 1
    for k in sorted(tt_by_tts.keys(),reverse=True):
        mapping[k] = "type_%i"%c
        c += 1

    res1 = { tn:mapping[tts] for (tn,tts) in tts_by_tn.items() }
    res2 = { mapping[tts]:tt for (tts,tt) in tt_by_tts.items() }
    return res1,res2

tiles_type_name,tile_types = types_from_init_state(init_state)


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


def tile_type(tile_name):
    return tile_types[tiles_type_name[tile_name]]


def tile_names():
    return sorted(tiles_type_name.keys())


def action(name, tile_type_name, tile_type, direction, counter_params=None, counter_condition=None, counter_effect=None):
    if direction == 's':
        (dx,dy) = (0,1)
    elif direction == 'n':
        (dx,dy) = (0,-1)
    elif direction == 'e':
        (dx,dy) = (1,0)
    elif direction == 'w':
        (dx,dy) = (-1,0)
    else:
        raise Exception()
    xcoords={x for (x,y) in tile_type}
    ycoords={y for (x,y) in tile_type}
    (removed,added) = removed_added_on_move(tile_type, dx, dy)
    xadded={x for (x,y) in added}
    yadded={y for (x,y) in added}
    xca = [x for x in xcoords.union(xadded)]
    yca = [y for y in ycoords.union(yadded)]

    adjix = [i for i in range(len(xca)-1) if xca[i]-xca[i+1] == -1]
    adjiy = [i for i in range(len(yca)-1) if yca[i]-yca[i+1] == -1]
    return f"""  (:action move-{name}-{direction}
   :parameters (?t {" ".join("?x%d"%n for n in xca)} {" ".join("?y%d"%n for n in yca)}{counter_params if with_counter else ""})
   :precondition (and ({tile_type_name} ?t)
        {" ".join(["(at ?t ?x%d ?y%d)" % (x,y) for (x,y) in tile_type])}
        {" ".join(["(adjwe ?x%d ?x%d)"%(xca[i],xca[i]+1) for i in adjix])}
        {" ".join(["(adjns ?y%d ?y%d)"%(yca[i],yca[i]+1) for i in adjiy])}
        {" ".join(["(empty ?x%d ?y%d)"%(x,y) for (x,y) in added])}
{counter_condition if with_counter else ""}    )
   :effect (and 
        {" ".join(["(not (at ?t ?x%d ?y%d)) (empty ?x%d ?y%d)"%(x,y,x,y) for (x,y) in removed])}
        {" ".join(["(at ?t ?x%d ?y%d) (not (empty ?x%d ?y%d))"%(x,y,x,y) for (x,y) in added])}
{counter_effect if with_counter else ""}    )
  )
"""


def domain():
    actions = ""
    if not with_counter:
        for tile_type_name in sorted(tile_types.keys()):
            for direction in ['s','n','e','w']:
                actions += action(tile_type_name, tile_type_name, tile_types[tile_type_name], direction)
    else:
        for tile_type_name in sorted(tile_types.keys()):
            for tile_name in tile_names():
                for direction in ['s','n','e','w']:
                    name = tile_name+"-"+tile_type_name
                    actions += action("C"+name, tile_type_name, tile_types[tile_type_name], direction,
                                      " ?n ?n2",
                                      "        (prev %s) (not (prev ?t)) (counter ?n) (succ ?n ?n2)\n" % tile_name,
                                      "        (not (prev %s)) (prev ?t) (not (counter ?n)) (counter ?n2)\n" % tile_name,
                                      )
                    actions += action("D"+name, tile_type_name, tile_types[tile_type_name], direction,
                                      "",
                                      "        (prev %s) (prev ?t)\n" % tile_name,
                                      "",
                                      )

    return f"""(define (domain khunpan)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjns ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v) 
        {" ".join(["(%s ?t)"%tile_type_name for tile_type_name in sorted(tile_types.keys())])}
{"        (counter ?n) (succ ?n ?n2) (prev ?t)"+chr(10) if with_counter else ""}  )
{actions})
"""


def problem():
    counter_init=f"""
        {" ".join(["(succ n%d n%d)"%(i,i+1) for i in range(max_count)])}
        (counter n0) (prev to1)
"""
    init_positions=""
    for n in range(len(init_state)):
        row = init_state[n]
        init_positions += "        " + " ".join([
            ("(at "+row[i] if row[i] is not None else "(empty") + " h%d v%d)" % (i+1,n+1) for i in range(len(row))]) + "\n"

    target_positions = " ".join(["(at %s h%d v%d)"%(name,pos[0],pos[1]) for (pos,name) in target_state.items()])

    return f"""
(define (problem khunpan1)
    (:domain khunpan)
    (:objects 
        {" ".join(["h%d"%i for i in range(1,xdim+1)])}
        {" ".join(["v%d"%i for i in range(1,ydim+1)])}
        {" ".join([tile_name for tile_name in tile_names()])}
{"        " + " ".join(["n%d"%i for i in range(max_count+1)])+chr(10) if with_counter else ""}    )
    (:init 
        {" ".join(["(adjwe h%d h%d)"%(i,i+1) for i in range(1,xdim)])}
        {" ".join(["(adjns v%d v%d)"%(i,i+1) for i in range(1,ydim)])}
        {" ".join(["(%s %s)" % (tiles_type_name[tile_name], tile_name) for tile_name in tile_names()])}

{init_positions}
{counter_init if with_counter else ""}    )
    (:goal (and {target_positions}))
)
"""
print(domain(),file=open(f'khunpan-gen-domain{str(max_count) if with_counter else ""}.pddl','w'))
print(problem(),file=open(f'khunpan-gen-problem{str(max_count) if with_counter else ""}.pddl','w'))