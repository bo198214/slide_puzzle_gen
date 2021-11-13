(define (domain trivial01-ac-typing)
  (:requirements :strips :action-costs :typing :negative-preconditions :disjunctive-preconditions)
  (:types
         xloc yloc tile - object
         type1 - tile
  )
  (:predicates (adjwe ?h1 ?h2 - xloc) (adjsn ?v1 ?v2 - yloc) 
        (at ?t - tile ?h - xloc ?v - yloc) (empty ?h - xloc ?v - yloc)
        (type1 ?t - tile)
        (prev ?t - tile)
  )
  (:constants tile1 - type1 init - tile)
  (:functions (total-cost))


  (:action move-count1-prev_tile1-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
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
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
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
)

