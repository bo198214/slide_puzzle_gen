(define (problem trivial01-ac)
    (:domain trivial01-ac)
    (:objects 
        h1 h2
        v1
    )
    (:init 
        (adjwe h1 h2)
        
        (type1 tile1)

        (at tile1 h1 v1) (empty h2 v1)

        (= (total-cost) 0) (prev init)
    )
    (:goal (and (at tile1 h2 v1)))
    (:metric minimize (total-cost))
)

