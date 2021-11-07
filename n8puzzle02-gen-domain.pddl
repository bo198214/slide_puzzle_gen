(define (domain n8puzzle02-gen)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjns ?v1 ?v2) 
        (at ?t ?h ?v) (empty ?h ?v) 
        (type_1 ?t)
        (counter ?n) (succ ?n ?n2) (prev ?t)
  )
  (:action move-Ctile1-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile1) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile1)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile1-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile1) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile1-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile1) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile1)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile1-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile1) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile1-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile1) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile1)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile1-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile1) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile1-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile1) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile1)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile1-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile1) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile2-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile2) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile2)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile2-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile2) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile2-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile2) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile2)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile2-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile2) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile2-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile2) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile2)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile2-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile2) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile2-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile2) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile2)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile2-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile2) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile3-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile3) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile3)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile3-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile3) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile3-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile3) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile3)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile3-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile3) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile3-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile3) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile3)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile3-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile3) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile3-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile3) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile3)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile3-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile3) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile4-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile4) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile4)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile4-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile4) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile4-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile4) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile4)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile4-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile4) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile4-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile4) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile4)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile4-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile4) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile4-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile4) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile4)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile4-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile4) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile5-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile5) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile5)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile5-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile5) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile5-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile5) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile5)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile5-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile5) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile5-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile5) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile5)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile5-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile5) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile5-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile5) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile5)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile5-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile5) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile6-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile6) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile6)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile6-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile6) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile6-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile6) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile6)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile6-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile6) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile6-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile6) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile6)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile6-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile6) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile6-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile6) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile6)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile6-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile6) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile7-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile7) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile7)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile7-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile7) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile7-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile7) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile7)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile7-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile7) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile7-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile7) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile7)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile7-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile7) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile7-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile7) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile7)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile7-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile7) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-Ctile8-type_1-s
   :parameters (?t ?x1 ?y0 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile8) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tile8)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile8-type_1-s
   :parameters (?t ?x1 ?y0 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y0 ?y1)
        (empty ?x1 ?y0)
        (or (prev tile8) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-Ctile8-type_1-n
   :parameters (?t ?x1 ?y1 ?y2 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile8) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tile8)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile8-type_1-n
   :parameters (?t ?x1 ?y1 ?y2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        
        (adjns ?y1 ?y2)
        (empty ?x1 ?y2)
        (or (prev tile8) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-Ctile8-type_1-e
   :parameters (?t ?x1 ?x2 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile8) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tile8)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile8-type_1-e
   :parameters (?t ?x1 ?x2 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (or (prev tile8) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-Ctile8-type_1-w
   :parameters (?t ?x0 ?x1 ?y1 ?n ?n2)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile8) (counter n0)) (not (prev ?t)) (counter ?n) (succ ?n ?n2)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tile8)) (prev ?t) (not (counter ?n)) (counter ?n2)
    )
  )
  (:action move-Dtile8-type_1-w
   :parameters (?t ?x0 ?x1 ?y1)
   :precondition (and (type_1 ?t)
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (or (prev tile8) (counter n0)) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
)

