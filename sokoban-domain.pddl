(define (domain sokoban)
  (:requirements :strips :negative-preconditions)
  (:predicates (adjwe ?h1 ?h2) (adjsn ?v1 ?v2)
        (sokoban_at ?h ?v) (wall_at ?h ?v) (crate_at ?h ?v)
  )
  (:action move-n
   :parameters (?x1 ?y0 ?y1)
   :precondition (and
        (adjsn ?y0 ?y1)

        (sokoban_at ?x1 ?y0)
        (not (crate_at ?x1 ?y1)) (not (wall_at ?x1 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y0))
        (sokoban_at ?x1 ?y1)
    )
  )
  (:action push-n
   :parameters (?x1 ?y0 ?y1 ?y2)
   :precondition (and
        (adjsn ?y0 ?y1) (adjsn ?y1 ?y2)

        (sokoban_at ?x1 ?y0) (crate_at ?x1 ?y1)
        (not (crate_at ?x1 ?y2)) (not (wall_at ?x1 ?y2))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y0)) (not (crate_at ?x1 ?y1))
        (sokoban_at ?x1 ?y1) (crate_at ?x1 ?y2)
    )
  )
  (:action move-s
   :parameters (?x1 ?y0 ?y1)
   :precondition (and
        (adjsn ?y1 ?y0)

        (sokoban_at ?x1 ?y0)
        (not (crate_at ?x1 ?y1)) (not (wall_at ?x1 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y0))
        (sokoban_at ?x1 ?y1)
    )
  )
  (:action push-s
   :parameters (?x1 ?y0 ?y1 ?y2)
   :precondition (and
        (adjsn ?y1 ?y0) (adjsn ?y2 ?y1)

        (sokoban_at ?x1 ?y0) (crate_at ?x1 ?y1)
        (not (crate_at ?x1 ?y2)) (not (wall_at ?x1 ?y2))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y0)) (not (crate_at ?x1 ?y1))
        (sokoban_at ?x1 ?y1) (crate_at ?x1 ?y2)
    )
  )
  (:action move-e
   :parameters (?x1 ?x2 ?y1)
   :precondition (and
        (adjwe ?x1 ?x2)

        (sokoban_at ?x1 ?y1)
        (not (crate_at ?x2 ?y1)) (not (wall_at ?x2 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y1))
        (sokoban_at ?x2 ?y1)
    )
  )
  (:action push-e
   :parameters (?x1 ?x2 ?x3 ?y1)
   :precondition (and
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)

        (sokoban_at ?x1 ?y1) (crate_at ?x2 ?y1)
        (not (crate_at ?x3 ?y1)) (not (wall_at ?x3 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y1)) (not (crate_at ?x2 ?y1))
        (sokoban_at ?x2 ?y1) (crate_at ?x3 ?y1)
    )
  )
  (:action move-w
   :parameters (?x1 ?x2 ?y1)
   :precondition (and
        (adjwe ?x2 ?x1)

        (sokoban_at ?x1 ?y1)
        (not (crate_at ?x2 ?y1)) (not (wall_at ?x2 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y1))
        (sokoban_at ?x2 ?y1)
    )
  )
  (:action push-w
   :parameters (?x1 ?x2 ?x3 ?y1)
   :precondition (and
        (adjwe ?x2 ?x1) (adjwe ?x3 ?x2)

        (sokoban_at ?x1 ?y1) (crate_at ?x2 ?y1)
        (not (crate_at ?x3 ?y1)) (not (wall_at ?x3 ?y1))
    )
   :effect (and
        (not (sokoban_at ?x1 ?y1)) (not (crate_at ?x2 ?y1))
        (sokoban_at ?x2 ?y1) (crate_at ?x3 ?y1)
    )
  )
)

