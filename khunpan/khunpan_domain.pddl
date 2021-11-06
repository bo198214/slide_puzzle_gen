(define (domain khunpan)
  (:requirements :strips)
  (:predicates (adjwe ?h1 ?h2) (adjns ?v1 ?v2) 
               (at ?t ?h ?v) (empty ?h ?v) (type_h2 ?t) (type_o ?t) (type_v2 ?t) (type_sq ?t)

               )
  (:action move-sq-s
   :parameters (?t ?x1 ?x2 ?y1 ?y2 ?y3)
   :precondition (and (type_sq ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjns ?y1 ?y2) (adjns ?y2 ?y3)
        (empty ?x2 ?y3) (empty ?x1 ?y3)

   )
   :effect (and 
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1)
        (at ?t ?x2 ?y3) (not (empty ?x2 ?y3)) (at ?t ?x1 ?y3) (not (empty ?x1 ?y3))

   )
  )
  (:action move-sq-n
   :parameters (?t ?x1 ?x2 ?y0 ?y1 ?y2)
   :precondition (and (type_sq ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2)
        (adjns ?y0 ?y1) (adjns ?y1 ?y2)
        (empty ?x1 ?y0) (empty ?x2 ?y0)

   )
   :effect (and 
        (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))

   )
  )
  (:action move-sq-e
   :parameters (?t ?x1 ?x2 ?x3 ?y1 ?y2)
   :precondition (and (type_sq ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)
        (adjns ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)

   )
   :effect (and
        (not (at ?t ?x1 ?y1)) (empty ?x1 ?y1) (not (at ?t ?x1 ?y2)) (empty ?x1 ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))

   )
  )
  (:action move-sq-w
   :parameters (?t ?x0 ?x1 ?x2 ?y1 ?y2)
   :precondition (and (type_sq ?t)
        (at ?t ?x1 ?y1) (at ?t ?x1 ?y2) (at ?t ?x2 ?y1) (at ?t ?x2 ?y2)
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)
        (adjns ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)

   )
   :effect (and
        (not (at ?t ?x2 ?y1)) (empty ?x2 ?y1) (not (at ?t ?x2 ?y2)) (empty ?x2 ?y2)
        (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))

   )
  )
  (:action move-v2-s
   :parameters (?t ?x ?y1 ?y2 ?y3)
   :precondition (and (type_v2 ?t)
        (at ?t ?x ?y1) (at ?t ?x ?y2)

        (adjns ?y1 ?y2) (adjns ?y2 ?y3)
        (empty ?x ?y3)

    )
   :effect (and
      (not (at ?t ?x ?y1)) (empty ?x ?y1)
       (at ?t ?x ?y3) (not (empty ?x ?y3))

       )
   )
  (:action move-v2-n
   :parameters (?t ?x ?y0 ?y1 ?y2)
   :precondition (and (type_v2 ?t)
        (at ?t ?x ?y1) (at ?t ?x ?y2)

        (adjns ?y0 ?y1) (adjns ?y1 ?y2)
        (empty ?x ?y0)

        )
   :effect (and
        (not (at ?t ?x ?y2)) (empty ?x ?y2)
        (at ?t ?x ?y0) (not (empty ?x ?y0))

        )
   )
  (:action move-v2-w
   :parameters (?t ?x0 ?x ?y1 ?y2)
   :precondition (and (type_v2 ?t)
        (at ?t ?x ?y1) (at ?t ?x ?y2)
        (adjwe ?x0 ?x)
        (adjns ?y1 ?y2)
        (empty ?x0 ?y1) (empty ?x0 ?y2)

   )
   :effect (and
      (not (at ?t ?x ?y1)) (empty ?x ?y1)   (not (at ?t ?x ?y2)) (empty ?x ?y2)
      (at ?t ?x0 ?y1) (not (empty ?x0 ?y1)) (at ?t ?x0 ?y2) (not (empty ?x0 ?y2))

      )
   )
  (:action move-v2-e
   :parameters (?t ?x ?x3 ?y1 ?y2)
   :precondition (and (type_v2 ?t)
        (at ?t ?x ?y1) (at ?t ?x ?y2)
        (adjwe ?x ?x3)
        (adjns ?y1 ?y2)
        (empty ?x3 ?y1) (empty ?x3 ?y2)

   )
   :effect (and
        (not (at ?t ?x ?y1)) (empty ?x ?y1)   (not (at ?t ?x ?y2)) (empty ?x ?y2)
        (at ?t ?x3 ?y1) (not (empty ?x3 ?y1)) (at ?t ?x3 ?y2) (not (empty ?x3 ?y2))

        )
   )
  (:action move-h2-e
   :parameters (?t ?x1 ?x2 ?x3 ?y)
   :precondition (and (type_h2 ?t)
        (at ?t ?x1 ?y) (at ?t ?x2 ?y)
        (adjwe ?x1 ?x2) (adjwe ?x2 ?x3)

        (empty ?x3 ?y)

   )
   :effect (and
        (not (at ?t ?x1 ?y)) (empty ?x1 ?y)
        (at ?t ?x3 ?y) (not (empty ?x3 ?y))

     )
   )
  (:action move-h2-w
   :parameters (?t ?x0 ?x1 ?x2 ?y)
   :precondition (and (type_h2 ?t)
        (at ?t ?x1 ?y) (at ?t ?x2 ?y) 
        (adjwe ?x0 ?x1) (adjwe ?x1 ?x2)

        (empty ?x0 ?y)

   )
   :effect (and
        (not (at ?t ?x2 ?y)) (empty ?x2 ?y)
        (at ?t ?x0 ?y) (not (empty ?x0 ?y))

     )
   )
  (:action move-h2-n
   :parameters (?t ?x1 ?x2 ?y0 ?y)
   :precondition (and (type_h2 ?t)
        (at ?t ?x1 ?y) (at ?t ?x2 ?y)
        (adjwe ?x1 ?x2)
        (adjns ?y0 ?y)
        (empty ?x1 ?y0) (empty ?x2 ?y0)

        )
   :effect (and
        (not (at ?t ?x1 ?y)) (empty ?x1 ?y)   (not (at ?t ?x2 ?y)) (empty ?x2 ?y)
        (at ?t ?x1 ?y0) (not (empty ?x1 ?y0)) (at ?t ?x2 ?y0) (not (empty ?x2 ?y0))

        )
   )
  (:action move-h2-s
   :parameters (?t ?x1 ?x2 ?y ?y3)
   :precondition (and (type_h2 ?t)
        (at ?t ?x1 ?y) (at ?t ?x2 ?y)
        (adjwe ?x1 ?x2)
        (adjns ?y ?y3)
        (empty ?x1 ?y3) (empty ?x2 ?y3)

   )
   :effect (and
        (not (at ?t ?x1 ?y)) (empty ?x1 ?y)   (not (at ?t ?x2 ?y)) (empty ?x2 ?y)
        (at ?t ?x1 ?y3) (not (empty ?x1 ?y3)) (at ?t ?x2 ?y3) (not (empty ?x2 ?y3))

     )
   )
  (:action move-o-e
   :parameters (?t ?x ?x3 ?y)
   :precondition (and (type_o ?t)
    (at ?t ?x ?y)
    (adjwe ?x ?x3)

    (empty ?x3 ?y)

   )
   :effect (and
      (not (at ?t ?x ?y)) (empty ?x ?y)
      (at ?t ?x3 ?y) (not (empty ?x3 ?y))

    )
  )
  (:action move-o-w
   :parameters (?t ?x0 ?x ?y)
   :precondition (and (type_o ?t)
    (at ?t ?x ?y)
     (adjwe ?x0 ?x)

      (empty ?x0 ?y)

      )
   :effect (and
   (not (at ?t ?x ?y)) (empty ?x ?y)
   (at ?t ?x0 ?y) (not (empty ?x0 ?y))

   )
  )
  (:action move-o-n
   :parameters (?t ?x ?y0 ?y)
   :precondition (and (type_o ?t)
    (at ?t ?x ?y)

    (adjns ?y0 ?y)
    (empty ?x ?y0)

    )
   :effect (and
    (not (at ?t ?x ?y)) (empty ?x ?y)
   (at ?t ?x ?y0) (not (empty ?x ?y0))

    )
   )
  (:action move-o-s
   :parameters (?t ?x ?y ?y3)
   :precondition (and (type_o ?t)
    (at ?t ?x ?y)

     (adjns ?y ?y3)
     (empty ?x ?y3)

     )
   :effect (and
    (not (at ?t ?x ?y)) (empty ?x ?y)
    (at ?t ?x ?y3) (not (empty ?x ?y3))

    )
   )
)

