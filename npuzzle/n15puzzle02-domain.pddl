(define (domain n15puzzle02)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjsn ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v)
        (type1 ?t)
  )


  (:action move-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
)

