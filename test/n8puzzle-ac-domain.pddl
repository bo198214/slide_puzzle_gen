(define (domain n8puzzle-ac)
  (:requirements :strips :action-costs :negative-preconditions :disjunctive-preconditions)
  (:predicates (adjwe ?h1 ?h2) (adjsn ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v)
        (type1 ?t)
        (prev ?t)
  )
  (:constants tile1 tile2 tile3 tile4 tile5 tile6 tile7 tile8 init)
  (:functions (total-cost))


  (:action move-count1-prev_tile1-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile1) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile1-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile1-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile1) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile1-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile1-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile1) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile1-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile1-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile1) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile1-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile2-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile2) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile2-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile2-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile2) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile2-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile2-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile2) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile2-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile2-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile2) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile2-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile3-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile3) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile3-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile3-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile3) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile3-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile3-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile3) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile3-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile3-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile3) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile3-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile4-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile4) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile4-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile4-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile4) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile4-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile4-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile4) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile4-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile4-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile4) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile4-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile5-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile5) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile5-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile5-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile5) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile5-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile5-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile5) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile5-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile5-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile5) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile5-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile6-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile6) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile6)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile6-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile6) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile6-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile6) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile6)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile6-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile6) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile6-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile6) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile6)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile6-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile6) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile6-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile6) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile6)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile6-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile6) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile7-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile7) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile7)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile7-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile7) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile7-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile7) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile7)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile7-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile7) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile7-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile7) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile7)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile7-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile7) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile7-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile7) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile7)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile7-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile7) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tile8-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev init) (and (prev tile8) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev init)) (not (prev tile8)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile8-type1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tile8) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tile8-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev init) (and (prev tile8) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev init)) (not (prev tile8)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile8-type1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tile8) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tile8-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev init) (and (prev tile8) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev init)) (not (prev tile8)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile8-type1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tile8) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tile8-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev init) (and (prev tile8) (not (prev ?t))))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev init)) (not (prev tile8)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tile8-type1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tile8) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
)

