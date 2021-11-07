(define (problem n8puzzle01-gen)
    (:domain n8puzzle01-gen)
    (:objects 
        h1 h2 h3
        v1 v2 v3
        tile1 tile2 tile3 tile4 tile5 tile6 tile7 tile8
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3)
        (adjns v1 v2) (adjns v2 v3)
        (type_1 tile1) (type_1 tile2) (type_1 tile3) (type_1 tile4) (type_1 tile5) (type_1 tile6) (type_1 tile7) (type_1 tile8)

        (empty h1 v3) (at tile8 h2 v3) (at tile7 h3 v3)
        (at tile6 h1 v2) (at tile5 h2 v2) (at tile4 h3 v2)
        (at tile3 h1 v1) (at tile2 h2 v1) (at tile1 h3 v1)

    )
    (:goal (and (at tile1 h1 v3) (at tile2 h2 v3) (at tile3 h3 v3) (at tile4 h1 v2) (at tile5 h2 v2) (at tile6 h3 v2) (at tile7 h1 v1) (at tile8 h2 v1) (empty h3 v1)))
)

