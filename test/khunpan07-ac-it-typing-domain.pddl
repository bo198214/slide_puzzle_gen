(define (domain khunpan07-ac-it-typing)
  (:requirements :strips :action-costs :typing :negative-preconditions)
  (:types
         xloc yloc tile - object
         type1 type2 type3 - tile
  )
  (:predicates (adjwe ?h1 ?h2 - xloc) (adjsn ?v1 ?v2 - yloc) 
        (at ?t - tile ?h - xloc ?v - yloc) (empty ?h - xloc ?v - yloc)
        (type1 ?t - tile) (type2 ?t - tile) (type3 ?t - tile)
        (prev ?t - tile)
  )
  (:constants to1 - type1 to2 - type1 to3 - type1 to4 - type1 tsq - type3 tv1 - type2 tv2 - type2 tv3 - type2 tv4 - type2 tv5 - type2)
  (:functions (total-cost))


  (:action move-count1-prev_to1-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to1-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_to1-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_to1-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_to2-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to2-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_to2-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_to2-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_to3-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to3-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_to3-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_to3-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_to4-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to4-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_to4-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_to4-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tsq-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tsq-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tsq-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tsq-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tv1-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv1-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tv1-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tv1-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tv2-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv2-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tv2-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tv2-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tv3-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv3-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tv3-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tv3-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tv4-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv4-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tv4-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tv4-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_tv5-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type1-s
   :parameters (?t - type1 ?x1 - xloc ?y0 ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y0 ?y1)
        (empty ?x1 ?y0)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv5-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type1-n
   :parameters (?t - type1 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        
        (adjsn ?y1 ?y2)
        (empty ?x1 ?y2)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y2) (not (empty ?x1 ?y2))
    )
  )
  (:action move-count1-prev_tv5-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type1-e
   :parameters (?t - type1 ?x1 ?x2 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x1 ?x2)
        
        (empty ?x2 ?y1)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1))
    )
  )
  (:action move-count1-prev_tv5-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type1-w
   :parameters (?t - type1 ?x0 ?x1 - xloc ?y1 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1)
        (adjwe ?x0 ?x1)
        
        (empty ?x0 ?y1)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1))
    )
  )
  (:action move-count1-prev_to1-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to1-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_to1-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_to1-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to2-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to2-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_to2-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_to2-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to3-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to3-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_to3-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_to3-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to4-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_to4-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_to4-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_to4-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tsq-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tsq-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tsq-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tsq-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv1-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv1-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tv1-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tv1-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv2-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv2-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tv2-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tv2-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv3-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv3-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tv3-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tv3-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv4-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv4-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tv4-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tv4-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv5-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type2-s
   :parameters (?t - type2 ?x1 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0))
    )
  )
  (:action move-count1-prev_tv5-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type2-n
   :parameters (?t - type2 ?x1 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))
    )
  )
  (:action move-count1-prev_tv5-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type2-e
   :parameters (?t - type2 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x2 ?y1) (empty ?x2 ?y2)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x2 ?y1) (not (empty ?x2 ?y1)) (at ?t ?x2 ?y2) (not (empty ?x2 ?y2))
    )
  )
  (:action move-count1-prev_tv5-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type2-w
   :parameters (?t - type2 ?x0 ?x1 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2)
        (adjwe ?x0 ?x1)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to1-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_to1-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_to1-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_to1-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to1-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to2-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_to2-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_to2-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_to2-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to2-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to3-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_to3-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_to3-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_to3-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to3-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_to4-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_to4-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_to4-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_to4-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev to4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_to4-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev to4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tsq-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tsq-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tsq-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tsq-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tsq) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tsq)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tsq-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tsq) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv1-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tv1-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tv1-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tv1-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv1) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv1)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv1-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv1) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv2-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tv2-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tv2-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tv2-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv2) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv2)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv2-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv2) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv3-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tv3-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tv3-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tv3-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv3) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv3)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv3-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv3) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv4-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tv4-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tv4-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tv4-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv4) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv4)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv4-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv4) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
  (:action move-count1-prev_tv5-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type3-s
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y0 ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))
    )
  )
  (:action move-count1-prev_tv5-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type3-n
   :parameters (?t - type3 ?x1 ?x2 - xloc ?y1 ?y2 ?y3 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2) (adjsn ?y2 ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))
    )
  )
  (:action move-count1-prev_tv5-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type3-e
   :parameters (?t - type3 ?x1 ?x2 ?x3 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjsn ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))
    )
  )
  (:action move-count1-prev_tv5-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv5) (not (prev ?t))
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
        (not (prev tv5)) (prev ?t) (increase (total-cost) 1)
    )
  )
  (:action move-count0-prev_tv5-type3-w
   :parameters (?t - type3 ?x0 ?x1 ?x2 - xloc ?y1 ?y2 - yloc)
   :precondition (and 
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjsn ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)
        (prev tv5) (prev ?t)
    )
   :effect (and 
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))
    )
  )
)

