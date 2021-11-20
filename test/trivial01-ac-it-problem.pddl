(define (problem trivial01-ac-it)
    (:domain trivial01-ac-it)
    (:objects 
        h1 h2
        v1
    )
    (:init 
        (adjwe h1 h2)
        
        (type1 tile1)

        (at tile1 h1 v1) (empty h2 v1)

        (= (total-cost) 0) (prev tile1)
    )
    (:goal (and (at tile1 h2 v1)))
    (:metric minimize (total-cost))
)

