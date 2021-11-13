(define (problem or-khunpan01)
    (:domain or-khunpan01)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
        {" ".join([f"{tile_name}{' - '+tiles_type_name[tile_name] if typing else ''}" for tile_name in tile_names()])}
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5)
        (type2 th) (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type4 tsq) (type3 tv1) (type3 tv2) (type3 tv3) (type3 tv4)

        (at tv1 h1 v5) (at tsq h2 v5) (at tsq h3 v5) (at tv2 h4 v5)
        (at tv1 h1 v4) (at tsq h2 v4) (at tsq h3 v4) (at tv2 h4 v4)
        (empty h1 v3) (at th h2 v3) (at th h3 v3) (empty h4 v3)
        (at tv3 h1 v2) (at to1 h2 v2) (at to2 h3 v2) (at tv4 h4 v2)
        (at tv3 h1 v1) (at to3 h2 v1) (at to4 h3 v1) (at tv4 h4 v1)

    )
    (:goal (and (or (at to1 h1 v1) (at to2 h1 v1) (at to3 h1 v1) (at to4 h1 v1))))
)

