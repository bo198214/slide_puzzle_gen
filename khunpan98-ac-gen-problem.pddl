(define (problem khunpan98-ac-gen)
    (:domain khunpan98-ac-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
        th1 th2 th3 to1 to2 to3 to4 tsq tv1 tv2
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5)
        (type2 th1) (type2 th2) (type2 th3) (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type4 tsq) (type3 tv1) (type3 tv2)

        (at to1 h1 v5) (at tsq h2 v5) (at tsq h3 v5) (at to2 h4 v5)
        (at to3 h1 v4) (at tsq h2 v4) (at tsq h3 v4) (at tv2 h4 v4)
        (at tv1 h1 v3) (at th1 h2 v3) (at th1 h3 v3) (at tv2 h4 v3)
        (at tv1 h1 v2) (at th2 h2 v2) (at th2 h3 v2) (at to4 h4 v2)
        (empty h1 v1) (at th3 h2 v1) (at th3 h3 v1) (empty h4 v1)

        (= (total-cost) 0) (prev tsq)
    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
    (:metric minimize (total-cost))
)

