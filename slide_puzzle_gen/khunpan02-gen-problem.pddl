(define (problem khunpan02-gen)
    (:domain khunpan02-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5 v6 v7 v8
        th1 th2 th3 th4 th5 to1 to2 to3 to4 tsq tv1 tv2 tv3 tv4 tv5 tv6
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5) (adjns v5 v6) (adjns v6 v7) (adjns v7 v8)
        (type_2 th1) (type_2 th2) (type_2 th3) (type_2 th4) (type_2 th5) (type_1 to1) (type_1 to2) (type_1 to3) (type_1 to4) (type_4 tsq) (type_3 tv1) (type_3 tv2) (type_3 tv3) (type_3 tv4) (type_3 tv5) (type_3 tv6)

        (at tv1 h1 v8) (at tsq h2 v8) (at tsq h3 v8) (at tv2 h4 v8)
        (at tv1 h1 v7) (at tsq h2 v7) (at tsq h3 v7) (at tv2 h4 v7)
        (at to1 h1 v6) (at tv3 h2 v6) (at tv4 h3 v6) (at to2 h4 v6)
        (at to3 h1 v5) (at tv3 h2 v5) (at tv4 h3 v5) (at to4 h4 v5)
        (at th1 h1 v4) (at th1 h2 v4) (at th2 h3 v4) (at th2 h4 v4)
        (at tv5 h1 v3) (at th3 h2 v3) (at th3 h3 v3) (at tv6 h4 v3)
        (at tv5 h1 v2) (at th4 h2 v2) (at th4 h3 v2) (at tv6 h4 v2)
        (empty h1 v1) (at th5 h2 v1) (at th5 h3 v1) (empty h4 v1)

    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
)

