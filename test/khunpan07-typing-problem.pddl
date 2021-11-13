(define (problem khunpan07-typing)
    (:domain khunpan07-typing)
    (:objects 
        h1 h2 h3 h4 - xloc
        v1 v2 v3 v4 v5 - yloc
        {" ".join([f"{tile_name}{' - '+tiles_type_name[tile_name] if typing else ''}" for tile_name in tile_names()])}
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5)
        (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type3 tsq) (type2 tv1) (type2 tv2) (type2 tv3) (type2 tv4) (type2 tv5)

        (at tv1 h1 v5) (empty h2 v5) (at tv2 h3 v5) (at tv3 h4 v5)
        (at tv1 h1 v4) (empty h2 v4) (at tv2 h3 v4) (at tv3 h4 v4)
        (at tv4 h1 v3) (at tsq h2 v3) (at tsq h3 v3) (at tv5 h4 v3)
        (at tv4 h1 v2) (at tsq h2 v2) (at tsq h3 v2) (at tv5 h4 v2)
        (at to1 h1 v1) (at to2 h2 v1) (at to3 h3 v1) (at to4 h4 v1)

    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
)

