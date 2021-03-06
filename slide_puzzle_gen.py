
def domain_problem(domain_name, problem_name, init_state, target_state,
                   adapted_counter=False, initial_tile=None,
                   typing=False):
    """
    Creates the domain and the problem PDDL string (pure strips) and returns them as the tuple (domain,problem)
    from a given init_state and target_state.

    The init_state is an array of arrays representing the initial state of the puzzle.
    The elements - the tile names - can be strings (which are used literally as objects in the pddl files) or numbers.
    In the latter case (as numbers are not allowed as object names) they will be prefixed by 'tile'.
    The value None means the field is free. The value -1 means a fixed block or a place where no tile can move to.

    The target_state has a different format then the init_state. It is a dictionary mapping positions (x,y)
    to tile names. It means that the final state is reached if the given positions are occupied by the associate tile names.
    The positions x and y are counted starting from 1 (not 0), so (1,1) is the left lower corner.

    Normally moving a tile by one field is counted as one move (and hence one action/step in the solution) and can possibly restricted by the planner you are using.
    However there is another interpretation of "one move": moving the same tile consecutively one ore several fields.
    If you set with_counter then it calculates total-costs in the latter way.
    For sliding puzzles with only one empty field (15puzzle or 9puzzle) this count is equal to the step count.
    However for khunpan it can be a big difference.
    This though bloats the PDDL description and makes it harder for the solver to find a solution.

    Sokoban mode means that the tile can only be moved to (x,y) if the opposite field is empty, as if the tile can
    not be pulled but only pushed.

    :param domain_name: The domain name as to appear in the domain PDDL string
    :param problem_name: The problem name as to appear in the problem PDDL string
    :param init_state: The initial state of the slide puzzle.
    :param target_state: The goal state of the slide puzzle.
    :param adapted_counter: Calculate the total-costs in the adapted way.
    :param initial_tile: In case of the adapted counter, to lower the difficulty, specify an initial tile that can not be moved on the first move
    :param typing: The PDDL is created with :typing extension
    :return: The tuple (domain,problem), each element being a strips PDDL string.
    """

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
                if tile is not None and tile != -1:
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
            mapping[k] = "type%i"%c
            c += 1

        res1 = { tn:mapping[tts] for (tn,tts) in tts_by_tn.items() }
        res2 = { mapping[tts]:tt for (tts,tt) in tt_by_tts.items() }
        return res1,res2

    def init_position_string(tile,x,y):
        if tile is None:
            return "(empty h%d v%d)" % (x,y)
        if tile == -1:
            return ""
        else:
            return "(at %s h%d v%d)" % (pddl_name(tile),x,y)

    def init_positions_string(init_state):
        init_positions = ""
        N = len(init_state)
        for n in range(N):
            row = init_state[n]
            init_positions += "\n        " + " ".join([
                init_position_string(row[i],i + 1,N - n) for i in range(len(row))])
        return init_positions

    def target_position_string(name,x,y):
        if name is None:
            return "(empty h%d v%d)"%(x,y)
        if isinstance(name,str) or isinstance(name,int):
            return "(at %s h%d v%d)" % (pddl_name(name),x,y)
        if isinstance(name,list):
            return "(or " + " ".join("(at %s h%d v%d)" % (n,x,y) for n in name) + ")"

    def target_positions_string(target_state):
        return " ".join([ target_position_string(name,pos[0],pos[1]) for (pos, name) in target_state.items()])

    or_goals = False
    for (pos,name) in target_state.items():
        if isinstance(name,list):
            or_goals = True
            break

    xdim,ydim=xy_extension(init_state)
    tiles_type_name,tile_types = types_from_init_state(init_state)

    def tile_names():
        return sorted(tiles_type_name.keys())

    def action(name, tile_type_name, tile_type, direction, counter_condition=None, counter_effect=None):
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
        xca = sorted([x for x in xcoords.union(xadded)])
        yca = sorted([y for y in ycoords.union(yadded)])

        adjix = [i for i in range(len(xca)-1) if xca[i]-xca[i+1] == -1]
        adjiy = [i for i in range(len(yca)-1) if yca[i]-yca[i+1] == -1]

        res = f"""
  (:action move-{name}-{direction}
   :parameters (?t{f" - {tile_type_name}" if typing else ""} {" ".join("?x%d"%n for n in xca)}{xlocT} {" ".join("?y%d"%n for n in yca)}{ylocT})
   :precondition (and {f"({tile_type_name} ?t)" if not typing else ""}
        {" ".join(["(at ?t ?x%d ?y%d)" % (x,y) for (x,y) in sorted(tile_type)])}
        {" ".join(["(adjwe ?x%d ?x%d)"%(xca[i],xca[i]+1) for i in adjix])}
        {" ".join(["(adjsn ?y%d ?y%d)"%(yca[i],yca[i]+1) for i in adjiy])}
        {" ".join(["(empty ?x%d ?y%d)"%(x,y) for (x,y) in sorted(added)])}"""
        if adapted_counter:
            res += counter_condition
        res += f"""
    )
   :effect (and 
        {" ".join(["(not (at ?t ?x%d ?y%d)) (empty ?x%d ?y%d)"%(x,y,x,y) for (x,y) in sorted(removed)])}
        {" ".join(["(at ?t ?x%d ?y%d) (not (empty ?x%d ?y%d))"%(x,y,x,y) for (x,y) in sorted(added)])}"""
        if adapted_counter:
            res += counter_effect
        res += """
    )
  )"""
        return res

    if typing:
        xlocT = " - xloc"
        ylocT = " - yloc"
        tileT = " - tile"
        initT = " - tile"
    else:
        xlocT = ""
        ylocT = ""
        tileT = ""
        initT = ""

    def domain():
        typing_req = ""
        neg_pre_req = ""
        disj_pre_req = ""
        action_cost_req = ""
        if adapted_counter:
            action_cost_req = " :action-costs"
            neg_pre_req = " :negative-preconditions"
            if initial_tile is None:
                disj_pre_req = " :disjunctive-preconditions"
        if typing:
            typing_req = " :typing"
        if or_goals:
            disj_pre_req = " :disjunctive-preconditions"

        res = f"""(define (domain {domain_name})
  (:requirements :strips{action_cost_req}{typing_req}{neg_pre_req}{disj_pre_req})"""
        if typing:
            res += f"""
  (:types
         xloc yloc tile - object
         {" ".join([tile_type_name for tile_type_name in sorted(tile_types.keys())])} - tile
  )"""
        res += f"""
  (:predicates (adjwe ?h1 ?h2{xlocT}) (adjsn ?v1 ?v2{ylocT}) 
        (at ?t{tileT} ?h{xlocT} ?v{ylocT}) (empty ?h{xlocT} ?v{ylocT})
        {" ".join([f"(%s ?t{tileT})"%tile_type_name for tile_type_name in sorted(tile_types.keys())])}"""
        if adapted_counter:
            res += f"""
        (prev ?t{tileT})"""
        res += """
  )"""
        if adapted_counter:
            res += f"""
  (:constants {" ".join([f"{tile_name}{' - '+tiles_type_name[tile_name] if typing else ''}" for tile_name in tile_names()])}{f" init{initT}" if initial_tile is None else ""})
  (:functions (total-cost))"""
        res += """

"""
        if not adapted_counter:
            for tile_type_name in sorted(tile_types.keys()):
                for direction in ['s','n','e','w']:
                    res += action(tile_type_name, tile_type_name, tile_types[tile_type_name], direction)
        else:
            for tile_type_name in sorted(tile_types.keys()):
                for tile_name in tile_names():
                    for direction in ['s','n','e','w']:
                        name = "prev_"+tile_name+"-"+tile_type_name
                        res += action("count1-"+name, tile_type_name, tile_types[tile_type_name], direction,
                                      f"""
        {"(or (prev init) (and " if initial_tile is None else ""}(prev %s) (not (prev ?t)){"))" if initial_tile is None else ""}""" % tile_name,
                                      f"""
        {"(not (prev init)) " if initial_tile is None else ""}(not (prev %s)) (prev ?t) (increase (total-cost) 1)""" % tile_name,
                                      )
                        res += action("count0-"+name, tile_type_name, tile_types[tile_type_name], direction,
                                      """
        (prev %s) (prev ?t)""" % tile_name,
                                      "",
                                      )
        res += """
)
"""
        return res

    def problem():
        res = f"""(define (problem {problem_name})
    (:domain {domain_name})
    (:objects 
        {" ".join(["h%d"%i for i in range(1,xdim+1)])}{xlocT}
        {" ".join(["v%d"%i for i in range(1,ydim+1)])}{ylocT}"""
        if not adapted_counter:
            res += f"""
        {" ".join([f"{tile_name}{' - '+tiles_type_name[tile_name] if typing else ''}" for tile_name in tile_names()])}"""
        res += f"""
    )
    (:init 
        {" ".join(["(adjwe h%d h%d)"%(i,i+1) for i in range(1,xdim)])}
        {" ".join(["(adjsn v%d v%d)"%(i,i+1) for i in range(1,ydim)])}
        {" ".join(["(%s %s)" % (tiles_type_name[tile_name], tile_name) for tile_name in tile_names()])}
{init_positions_string(init_state)}
"""
        if adapted_counter:
            res += f"""
        (= (total-cost) 0) (prev {"init" if initial_tile is None else pddl_name(initial_tile)})"""
        res += f"""
    )
    (:goal (and {target_positions_string(target_state)}))"""
        if adapted_counter:
            res += """
    (:metric minimize (total-cost))"""
        res += """
)
"""
        return res

    return domain(),problem()


def problem_sokoban(problem_name: str, desc: str):
    sokoban = None
    walls = []
    crates = []
    empties = []
    goals = []
    sgoal = None

    lines = [line for line in desc.splitlines() if not line == ""]
    N = len(lines)
    n = 1
    for line in lines:
        i = 1
        for c in line:
            x = i
            y = N - n + 1
            if c.lower() == "w" or c == "#":
                walls.append((x,y))
            elif c == '$':
                crates.append((x,y))
            elif c == "*":  # crate is situated on a goal
                crates.append((x,y))
                goals.append((x,y))
            elif c == '.':
                goals.append((x, y))
            elif c == " " or c == '-' or c == '_':
                empties.append((x, y))
            elif c == "@":
                sokoban = (x,y)
            elif c == "+":  # sokoban is situated on a goal
                sokoban = (x,y)
                goals.append((x,y))
            elif c == "o":
                sgoal = (x,y)
            i += 1
        n += 1
    xvalues = [x for (x,y) in walls+crates+goals+empties]
    yvalues = [y for (x,y) in walls+crates+goals+empties]
    xmin=min(xvalues)
    xmax=max(xvalues)
    ymin=min(yvalues)
    ymax=max(yvalues)
    return f"""(define (problem {problem_name})
    (:domain sokoban)
    (:objects
        {" ".join(["h%d"%i for i in range(xmin,xmax+1)])}
        {" ".join(["v%d"%i for i in range(ymin,ymax+1)])}
    )
    (:init
        {" ".join(["(adjwe h%d h%d)"%(i,i+1) for i in range(xmin,xmax)])}
        {" ".join(["(adjsn v%d v%d)"%(i,i+1) for i in range(ymin,ymax)])}
        
        {" ".join([f"(wall_at h{x} v{y})" for (x,y) in walls])}
        {" ".join([f"(crate_at h{x} v{y})" for (x,y) in crates])}
        (sokoban_at h{sokoban[0]} v{sokoban[1]})
    )
    (:goal (and {" ".join([f"(crate_at h{x} v{y})" for (x,y) in goals])}{f" (sokoban_at h{sgoal[0]} v{sgoal[1]})" if sgoal is not None else ""}))
)

"""
