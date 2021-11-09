(define (domain n8puzzle02-gen)
  (:requirements :strips :typing)
  (:types 
         xloc yloc count tile - object
		 type_1 - tile
  )
  (:predicates (adjwe ?h1 - xloc ?h2 - xloc) (adjns ?v1 - yloc ?v2 - yloc) 
        (at ?t - tile ?h - xloc ?v - yloc) (empty ?h - xloc ?v - yloc) 
        (counter ?n - count) (succ ?n - count ?n2 - count) (prev ?t - tile)
  )
  (:action move-Ctile1-type_1-s
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y0 - yloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?y1 - yloc ?y2 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x1 - xloc ?x2 - xloc ?y1 - yloc)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc ?n - count ?n2 - count)
   :precondition (and
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
   :parameters (?t - type_1 ?x0 - xloc ?x1 - xloc ?y1 - yloc)
   :precondition (and
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

