(define (domain khunpan07-typing)
  (:requirements :strips :typing)
  (:types
         xloc yloc tile - object
         type1 type2 type3 - tile
  )
  (:predicates (adjwe ?h1 ?h2 - xloc) (adjsn ?v1 ?v2 - yloc) 
        (at ?t - tile ?h - xloc ?v - yloc) (empty ?h - xloc ?v - yloc)
        (type1 ?t - tile) (type2 ?t - tile) (type3 ?t - tile)
  )


  (:action move-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
  (:action move-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
  (:action move-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
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
  (:action move-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
  (:action move-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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

