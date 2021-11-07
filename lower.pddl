
(define (problem khunpan1)
    (:domain khunpan)
    (:objects h1 h2 h3 h4
              v1 v2 v3 v4 v5
              
              th tv1 tv2 tv3 tv4 tsq to1 to2 to3 to4)
    (:init (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
           (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5)
           
           
           (type_o to1) (type_o to2) (type_o to3) (type_o to4)
           (type_v2 tv1) (type_v2 tv2) (type_v2 tv3) (type_v2 tv4)
           (type_h2 th)
           (type_sq tsq)
           
           (at tv1 h1 v1) (at tsq h2 v1) (at tsq h3 v1) (at tv2 h4 v1)
           (at tv1 h1 v2) (at tsq h2 v2) (at tsq h3 v2) (at tv2 h4 v2)
           (empty  h1 v3) (at th  h2 v3) (at th  h3 v3) (empty  h4 v3)
           (at tv3 h1 v4) (at to1 h2 v4) (at to2 h3 v4) (at tv4 h4 v4)
           (at tv3 h1 v5) (at to3 h2 v5) (at to4 h3 v5) (at tv4 h4 v5)
           
           
           
    )
    (:goal (and
        (at tsq h1 v3) (at tsq h2 v3) (at tsq h1 v4) (at tsq h2 v4)
        (at th h3 v5) (at th h4 v5)
        (empty h3 v4) (empty h4 v4)
        (or
          (at to1 h1 v5) (at to2 h1 v5) (at to3 h1 v5) (at to4 h1 v5))
        (or
          (at to1 h2 v5) (at to2 h2 v5) (at to3 h2 v5) (at to4 h2 v5))
    ))
)

