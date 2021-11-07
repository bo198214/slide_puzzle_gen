
def domain_problem(domain_name,problem_name,init_state,target_state,max_count=None):
    """
    Creates the domain and the problem PDDL string (pure strips) and returns them as the tuple (domain,problem).
    :param domain_name: The domain name as to appear in the domain PDDL string
    :param problem_name: The problem name as to appear in the problem PDDL string
    :param init_state: An array of arrays representing the initial state of the puzzle
    The elements - the tile names - can be strings (which are used literally as objects in the pddl files) or numbers.
    In the latter case (as numbers are not allowed as object names) they will be prefixed by 'tile'.
    :param target_state: This has a different format then the init_state. It is a dictionary mapping positions (x,y)
    to tile names. It means that the final state is reached if the given positions are occupied by the associate tile names.
    The positions x and y are counted starting from 1 (not 0), so (1,1) is the left lower corner.
    :param max_count: Normally moving a tile by one field is counted as one move (and hence one action/step in the solution) and can possibly restricted by the planner you are using.
    However there is another interpretation of "one move": moving the same tile consecutively one ore several fields.
    If you provide max_count then the solution is only valid if these number of moves is at most max_count.
    For sliding puzzles with only one empty field (15puzzle or 9puzzle) this count is equal to the step count.
    However for khunpan it can be a big difference.
    This quite bloats the PDDL description and makes it much harder for the solver to find a solution.
    :return: The tuple (domain,problem), each element being a strips PDDL string.
    """
    with_counter=max_count is not None

    def pddl_name(t):
        if isinstance(t,int):
            return 'tile'+str(t)
        return t

    def removed_added_on_move(tile, dx, dy):
        trans = {(x+dx,y+dy) for (x,y) in tile}
        return tile - trans, trans-tile

    def xy_extension(init_state):
        ydim=len(init_state)
        xdim=len(init_state[0])
        return xdim,ydim

    def types_from_init_state(init_state):
        tile_positions = {}
        N = len(init_state)
        for n in range(N):
            row = init_state[n]
            for i in range(len(row)):
                tile = row[i]
                if tile is not None:
                    if tile not in tile_positions:
                        tile_positions[tile] = []
                    tile_positions[tile].append((i+1,N-n))

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
            tts_by_tn[pddl_name(tile)] = key

        mapping = {}
        c = 1
        for k in sorted(tt_by_tts.keys(),reverse=True):
            mapping[k] = "type_%i"%c
            c += 1

        res1 = { tn:mapping[tts] for (tn,tts) in tts_by_tn.items() }
        res2 = { mapping[tts]:tt for (tts,tt) in tt_by_tts.items() }
        return res1,res2

    def init_positions_string(init_state):
        init_positions = ""
        N = len(init_state)
        for n in range(N):
            row = init_state[n]
            init_positions += "        " + " ".join([
                ("(at " + pddl_name(row[i]) if row[i] is not None else "(empty") + " h%d v%d)" % (i + 1, N - n) for i in
                range(len(row))]) + "\n"
        return init_positions

    def target_positions_string(target_state):
        return " ".join(
            [("(at %s" % pddl_name(name) if name is not None else "(empty") + " h%d v%d)" % (pos[0], pos[1]) for (pos, name) in
             target_state.items()])

    xdim,ydim=xy_extension(init_state)
    tiles_type_name,tile_types = types_from_init_state(init_state)

    def tile_type(tile_name):
        return tile_types[tiles_type_name[tile_name]]

    def tile_names():
        return sorted(tiles_type_name.keys())

    def action(name, tile_type_name, tile_type, direction, counter_params=None, counter_condition=None, counter_effect=None):
        if direction == 's':
            (dx,dy) = (0,-1)
        elif direction == 'n':
            (dx,dy) = (0,1)
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

        return f"""(define (domain {domain_name})
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjns ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v) 
        {" ".join(["(%s ?t)"%tile_type_name for tile_type_name in sorted(tile_types.keys())])}
{"        (counter ?n) (succ ?n ?n2) (prev ?t)"+chr(10) if with_counter else ""}  )
{actions})
"""

    def problem():
        counter_init=""
        if with_counter:
            counter_init=f"""
        {" ".join(["(succ n%d n%d)"%(i,i+1) for i in range(max_count)])}
        (counter n0) (prev to1)
"""
        init_positions=init_positions_string(init_state)
        target_positions = target_positions_string(target_state)
        return f"""(define (problem {problem_name})
    (:domain {domain_name})
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

    return domain(),problem()