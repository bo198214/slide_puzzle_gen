(define (problem n15puzzle1-gen)
    (:domain n15puzzle1-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4
        t01 t02 t03 t04 t05 t06 t07 t08 t09 t10 t11 t12 t13 t14 t15
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4)
        (type_1 t01) (type_1 t02) (type_1 t03) (type_1 t04) (type_1 t05) (type_1 t06) (type_1 t07) (type_1 t08) (type_1 t09) (type_1 t10) (type_1 t11) (type_1 t12) (type_1 t13) (type_1 t14) (type_1 t15)

        (at t15 h1 v4) (at t14 h2 v4) (at t13 h3 v4) (at t12 h4 v4)
        (at t11 h1 v3) (at t10 h2 v3) (at t09 h3 v3) (at t08 h4 v3)
        (at t07 h1 v2) (at t06 h2 v2) (at t05 h3 v2) (empty h4 v2)
        (at t03 h1 v1) (at t02 h2 v1) (at t01 h3 v1) (at t04 h4 v1)

    )
    (:goal (and (at t01 h1 v4) (at t02 h2 v4) (at t03 h3 v4) (at t04 h4 v4) (at t05 h1 v3) (at t06 h2 v3) (at t07 h3 v3) (at t08 h4 v3) (at t09 h1 v2) (at t10 h2 v2) (at t11 h3 v2) (at t12 h4 v2) (at t13 h1 v1) (at t14 h2 v1) (at t15 h3 v1) (empty h4 v1)))
)

