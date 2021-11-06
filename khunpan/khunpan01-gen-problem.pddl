(define (problem khunpan01-gen)
    (:domain khunpan01-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
        th to1 to2 to3 to4 tsq tv1 tv2 tv3 tv4
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5)
        (type_2 th) (type_1 to1) (type_1 to2) (type_1 to3) (type_1 to4) (type_4 tsq) (type_3 tv1) (type_3 tv2) (type_3 tv3) (type_3 tv4)

        (at tv1 h1 v1) (at tsq h2 v1) (at tsq h3 v1) (at tv2 h4 v1)
        (at tv1 h1 v2) (at tsq h2 v2) (at tsq h3 v2) (at tv2 h4 v2)
        (empty h1 v3) (at th h2 v3) (at th h3 v3) (empty h4 v3)
        (at tv3 h1 v4) (at to1 h2 v4) (at to2 h3 v4) (at tv4 h4 v4)
        (at tv3 h1 v5) (at to3 h2 v5) (at to4 h3 v5) (at tv4 h4 v5)

    )
    (:goal (and (at tsq h2 v4) (at tsq h3 v4) (at tsq h2 v5) (at tsq h3 v5)))
)

