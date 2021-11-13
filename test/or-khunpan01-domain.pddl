(define (domain or-khunpan01)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjsn ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v)
        (type1 ?t) (type2 ?t) (type3 ?t) (type4 ?t)
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
  (:action move-type2-s
   :parameters (?t ?x1 ?x2 ?y0 ?y1)
   :precondition (and (type2 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x2 ?y1)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-type2-n
   :parameters (?t ?x1 ?x2 ?y1 ?y2)
   :precondition (and (type2 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x2 ?y1)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2) (empty ?x2 ?y2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-type2-e
   :parameters (?t ?x1 ?x2 ?x3 ?y1)
   :precondition (and (type2 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x2 ?y1)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        
        (empty ?x3 ?y1)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1))
    )
  )
  (:action move-type2-w
   :parameters (?t ?x0 ?x1 ?x2 ?y1)
   :precondition (and (type2 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x2 ?y1)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        
        (empty ?x0 ?y1)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-type3-s
   :parameters (?t ?x1 ?y0 ?y1 ?y2)
   :precondition (and (type3 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-type3-n
   :parameters (?t ?x1 ?y1 ?y2 ?y3)
   :precondition (and (type3 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-type3-e
   :parameters (?t ?x1 ?x2 ?y1 ?y2)
   :precondition (and (type3 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-type3-w
   :parameters (?t ?x0 ?x1 ?y1 ?y2)
   :precondition (and (type3 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-type4-s
   :parameters (?t ?x1 ?x2 ?y0 ?y1 ?y2)
   :precondition (and (type4 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-type4-n
   :parameters (?t ?x1 ?x2 ?y1 ?y2 ?y3)
   :precondition (and (type4 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x2 ?y3) (empty ?x1 ?y3)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x2 ?y3) (not (empty ?x2 ?y3)) (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-type4-e
   :parameters (?t ?x1 ?x2 ?x3 ?y1 ?y2)
   :precondition (and (type4 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-type4-w
   :parameters (?t ?x0 ?x1 ?x2 ?y1 ?y2)
   :precondition (and (type4 ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
)

