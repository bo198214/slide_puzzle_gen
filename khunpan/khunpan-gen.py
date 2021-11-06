xdim=4
ydim=5
max_count=None
#max_count=80
with_counter=max_count is not None


def removed_added_on_move(tile, dx, dy):
    trans = {(x+dx,y+dy) for (x,y) in tile}
    return tile - trans, trans-tile


tiles_type_name = {
    "to1": 'tile_o',
    "to2": 'tile_o',
    "to3": 'tile_o',
    "to4": 'tile_o',
    "tv1": 'tile_v',
    "tv2": 'tile_v',
    "tv3": 'tile_v',
    "tv4": 'tile_v',
    "th":  'tile_h',
    "tsq": 'tile_q'
}

tile_types = {
    'tile_o': {(1,1)},
    'tile_v': {(1, 1), (1, 2)},
    'tile_h': {(1, 1), (2, 1)},
    'tile_q': {(1, 1), (1, 2), (2, 1), (2, 2)}
}

init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None,  "th",  "th",   None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = {
    (2,4): "tsq",
    (3,4): "tsq",
    (2,5): "tsq",
    (3,5): "tsq"
}


def tile_type(tile_name):
    return tile_types[tiles_type_name[tile_name]]


def tile_names():
    return sorted(tiles_type_name.keys())


def action(tile_type_name, tile, direction):
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
    xcoords={x for (x,y) in tile}
    ycoords={y for (x,y) in tile}
    (removed,added) = removed_added_on_move(tile, dx, dy)
    xadded={x for (x,y) in added}
    yadded={y for (x,y) in added}
    xca = [x for x in xcoords.union(xadded)]
    yca = [y for y in ycoords.union(yadded)]

    adjix = [i for i in range(len(xca)-1) if xca[i]-xca[i+1] == -1]
    adjiy = [i for i in range(len(yca)-1) if yca[i]-yca[i+1] == -1]
    return f"""  (:action move-{tile_type_name}-{direction}
   :parameters (?t {" ".join("?x%d"%n for n in xca)} {" ".join("?y%d"%n for n in yca)}{" ?n ?n2" if with_counter else ""})
   :precondition (and ({tile_type_name} ?t)
        {" ".join(["(at ?t ?x%d ?y%d)"%(x,y) for (x,y) in tile])}
        {" ".join(["(adjwe ?x%d ?x%d)"%(xca[i],xca[i]+1) for i in adjix])}
        {" ".join(["(adjns ?y%d ?y%d)"%(yca[i],yca[i]+1) for i in adjiy])}
        {" ".join(["(empty ?x%d ?y%d)"%(x,y) for (x,y) in added])}
{"        (counter ?n) (succ ?n ?n2)"+chr(10) if with_counter else ""}    )
   :effect (and 
        {" ".join(["(not (at ?t ?x%d ?y%d)) (empty ?x%d ?y%d)"%(x,y,x,y) for (x,y) in removed])}
        {" ".join(["(at ?t ?x%d ?y%d) (not (empty ?x%d ?y%d))"%(x,y,x,y) for (x,y) in added])}
{"        (not (counter ?n)) (counter ?n2)"+chr(10) if with_counter else ""}    )
  )
"""


def domain():
    actions = ""
    for tile_type_name in sorted(tile_types.keys()):
        for direction in ['s','n','e','w']:
            actions += action(tile_type_name, tile_types[tile_type_name], direction)

    return f"""(define (domain khunpan)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjns ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v) 
        {" ".join(["(%s ?t)"%tile_type_name for tile_type_name in sorted(tile_types.keys())])}
{"        (counter ?n) (succ ?n ?n2)"+chr(10) if with_counter else ""}  )
{actions})
"""


def problem():
    counter_init="""

           {" ".join(["(succ n%d n%d)"%(i,i+1) for i in range(max_count)])}
           (counter n0)
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
{" ".join(["        n%d"%i for i in range(max_count+1)]) if with_counter else ""}    )
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