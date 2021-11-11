(define (problem khunpan00-gen)
    (:domain khunpan00-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
        to1 to2 to3 to4 to5 to6 tsq tv1 tv2 tv3 tv4
        init
	)
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5)
        (type1 to1) (type1 to2) (type1 to3) (type1 to4) (type1 to5) (type1 to6) (type3 tsq) (type2 tv1) (type2 tv2) (type2 tv3) (type2 tv4)

        (at tv1 h1 v5) (at tsq h2 v5) (at tsq h3 v5) (at tv2 h4 v5)
        (at tv1 h1 v4) (at tsq h2 v4) (at tsq h3 v4) (at tv2 h4 v4)
        (at to5 h1 v3) (empty h2 v3) (empty h3 v3) (at to6 h4 v3)
        (at tv3 h1 v2) (at to1 h2 v2) (at to2 h3 v2) (at tv4 h4 v2)
        (at tv3 h1 v1) (at to3 h2 v1) (at to4 h3 v1) (at tv4 h4 v1)

    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
)

