(define (domain sokoban)
  (:requirements :strips :negative-preconditions)
  (:predicates (adjwe ?xy1 ?xy2) (adjsn ?xy1 ?xy2)
        (sokoban_at ?xy) (wall_at ?xy) (crate_at ?xy)
  )
  (:action move-n
   :parameters (?xy0 ?xy1)
   :precondition (and
        (adjsn ?xy0 ?xy1)

        (sokoban_at ?xy0)
        (not (crate_at ?xy1))
    )
   :effect (and
        (not (sokoban_at ?xy0))
        (sokoban_at ?xy1)
    )
  )
  (:action push-n
   :parameters (?xy0 ?xy1 ?xy2)
   :precondition (and
        (adjsn ?xy0 ?xy1) (adjsn ?xy1 ?xy2)

        (sokoban_at ?xy0) (crate_at ?xy1)
        (not (crate_at ?xy2))
    )
   :effect (and
        (not (sokoban_at ?xy0)) (not (crate_at ?xy1))
        (sokoban_at ?xy1) (crate_at ?xy2)
    )
  )
  (:action move-s
   :parameters (?xy0 ?xy1)
   :precondition (and
        (adjsn ?xy1 ?xy0)

        (sokoban_at ?xy0)
        (not (crate_at ?xy1))
    )
   :effect (and
        (not (sokoban_at ?xy0))
        (sokoban_at?xy1)
    )
  )
  (:action push-s
   :parameters (?xy0 ?xy1 ?xy2)
   :precondition (and
        (adjsn ?xy1 ?xy0) (adjsn ?xy2 ?xy1)

        (sokoban_at ?xy0) (crate_at ?xy1)
        (not (crate_at ?xy2))
    )
   :effect (and
        (not (sokoban_at ?xy0)) (not (crate_at ?xy1))
        (sokoban_at ?xy1) (crate_at ?xy2)
    )
  )
  (:action move-e
   :parameters (?xy1 ?xy2)
   :precondition (and
        (adjwe ?xy1 ?xy2)

        (sokoban_at ?xy1)
        (not (crate_at ?xy2))
    )
   :effect (and
        (not (sokoban_at ?xy1))
        (sokoban_at ?xy2)
    )
  )
  (:action push-e
   :parameters (?xy1 ?xy2 ?xy3)
   :precondition (and
        (adjwe ?xy1 ?xy2) (adjwe ?xy2 ?xy3)

        (sokoban_at ?xy1) (crate_at ?xy2)
        (not (crate_at ?xy3))
    )
   :effect (and
        (not (sokoban_at ?xy1)) (not (crate_at ?xy2))
        (sokoban_at ?xy2) (crate_at ?xy3)
    )
  )
  (:action move-w
   :parameters (?xy1 ?xy2)
   :precondition (and
        (adjwe ?xy2 ?xy1)

        (sokoban_at ?xy1)
        (not (crate_at ?xy2))
    )
   :effect (and
        (not (sokoban_at ?xy1))
        (sokoban_at ?xy2)
    )
  )
  (:action push-w
   :parameters (?xy1 ?xy2 ?xy3)
   :precondition (and
        (adjwe ?xy2 ?xy1) (adjwe ?xy3 ?xy2)

        (sokoban_at ?xy1) (crate_at ?xy2)
        (not (crate_at ?xy3))
    )
   :effect (and
        (not (sokoban_at ?xy1)) (not (crate_at ?xy2))
        (sokoban_at ?xy2) (crate_at ?xy3)
    )
  )
)

