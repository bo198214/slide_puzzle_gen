(define (problem khunpan-exercise029)
    (:domain khunpan-exercise029)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5)
        (type2 th1) (type2 th2) (type2 th3) (type2 th4) (type2 th5) (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type3 tsq)

        (empty h1 v5) (at th1 h2 v5) (at th1 h3 v5) (empty h4 v5)
        (at th2 h1 v4) (at th2 h2 v4) (at th3 h3 v4) (at th3 h4 v4)
        (at to1 h1 v3) (at tsq h2 v3) (at tsq h3 v3) (at to2 h4 v3)
        (at to3 h1 v2) (at tsq h2 v2) (at tsq h3 v2) (at to4 h4 v2)
        (at th4 h1 v1) (at th4 h2 v1) (at th5 h3 v1) (at th5 h4 v1)

        (= (total-cost) 0) (prev init)
    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
    (:metric minimize (total-cost))
)

