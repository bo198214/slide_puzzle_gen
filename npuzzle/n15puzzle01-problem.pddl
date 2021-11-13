(define (problem n15puzzle01)
    (:domain n15puzzle01)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4
        t01 t02 t03 t04 t05 t06 t07 t08 t09 t10 t11 t12 t13 t14 t15
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4)
        (type1 t01) (type1 t02) (type1 t03) (type1 t04) (type1 t05) (type1 t06) (type1 t07) (type1 t08) (type1 t09) (type1 t10) (type1 t11) (type1 t12) (type1 t13) (type1 t14) (type1 t15)

        (at t15 h1 v4) (at t02 h2 v4) (at t01 h3 v4) (at t12 h4 v4)
        (at t08 h1 v3) (at t05 h2 v3) (at t06 h3 v3) (at t11 h4 v3)
        (at t04 h1 v2) (at t09 h2 v2) (at t10 h3 v2) (at t07 h4 v2)
        (at t03 h1 v1) (at t14 h2 v1) (at t13 h3 v1) (empty h4 v1)

    )
    (:goal (and (empty h1 v4) (at t01 h2 v4) (at t02 h3 v4) (at t03 h4 v4) (at t04 h1 v3) (at t05 h2 v3) (at t06 h3 v3) (at t07 h4 v3) (at t08 h1 v2) (at t09 h2 v2) (at t10 h3 v2) (at t11 h4 v2) (at t12 h1 v1) (at t13 h2 v1) (at t14 h3 v1) (at t15 h4 v1)))
)

