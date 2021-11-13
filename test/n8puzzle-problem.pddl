(define (problem n8puzzle)
    (:domain n8puzzle)
    (:objects 
        h1 h2 h3
        v1 v2 v3
        {" ".join([f"{tile_name}{' - '+tiles_type_name[tile_name] if typing else ''}" for tile_name in tile_names()])}
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3)
        (adjsn v1 v2) (adjsn v2 v3)
        (type1 tile1) (type1 tile2) (type1 tile3) (type1 tile4) (type1 tile5) (type1 tile6) (type1 tile7) (type1 tile8)

        (empty h1 v3) (at tile8 h2 v3) (at tile7 h3 v3)
        (at tile6 h1 v2) (at tile5 h2 v2) (at tile4 h3 v2)
        (at tile3 h1 v1) (at tile2 h2 v1) (at tile1 h3 v1)

    )
    (:goal (and (at tile1 h1 v3) (at tile2 h2 v3) (at tile3 h3 v3) (at tile4 h1 v2) (at tile5 h2 v2) (at tile6 h3 v2) (at tile7 h1 v1) (at tile8 h2 v1) (empty h3 v1)))
)

