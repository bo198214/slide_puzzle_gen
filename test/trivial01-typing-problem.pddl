(define (problem trivial01-typing)
    (:domain trivial01-typing)
    (:objects 
        h1 h2 - xloc
        v1 - yloc
        tile1 - type1
    )
    (:init 
        (adjwe h1 h2)
        
        (type1 tile1)

        (at tile1 h1 v1) (empty h2 v1)

    )
    (:goal (and (at tile1 h2 v1)))
)

