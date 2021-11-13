(define (problem khunpan-exercise016)
    (:domain khunpan-exercise016)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5)
        (type2 th) (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type5 tsq) (type3 tv1) (type3 tv2) (type4 tv3) (type1 tv4)

        (at tv1 h1 v5) (at tv2 h2 v5) (at tv3 h3 v5) (at tv4 h4 v5)
        (at tv1 h1 v4) (at tv2 h2 v4) (at tv3 h3 v4) (at tv3 h4 v4)
        (empty h1 v3) (at tsq h2 v3) (at tsq h3 v3) (empty h4 v3)
        (at to1 h1 v2) (at tsq h2 v2) (at tsq h3 v2) (at to2 h4 v2)
        (at to3 h1 v1) (at th h2 v1) (at th h3 v1) (at to4 h4 v1)

        (= (total-cost) 0) (prev init)
    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
    (:metric minimize (total-cost))
)

