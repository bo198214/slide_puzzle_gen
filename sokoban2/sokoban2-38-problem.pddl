(define (problem sokoban2-38)
    (:domain sokoban)
    (:objects
        xy-7-10 xy-5-9 xy-9-9 xy-3-8 xy-4-7 xy-9-5 xy-3-4 xy-6-4 xy-5-8 xy-6-8 xy-7-8 xy-5-7 xy-6-7 xy-7-7 xy-5-6 xy-7-6 xy-1-12 xy-2-12 xy-3-12 xy-4-12 xy-5-12 xy-6-12 xy-8-11 xy-2-10 xy-3-10 xy-4-10 xy-5-10 xy-6-10 xy-8-10 xy-9-10 xy-2-9 xy-3-9 xy-4-9 xy-8-9 xy-9-8 xy-1-7 xy-3-7 xy-8-7 xy-9-7 xy-1-6 xy-3-6 xy-6-6 xy-9-6 xy-1-5 xy-3-5 xy-4-5 xy-5-5 xy-7-5 xy-10-5 xy-1-4 xy-4-4 xy-5-4 xy-7-4 xy-8-4 xy-9-4 xy-10-4 xy-1-3 xy-3-3 xy-4-3 xy-1-2 xy-9-11
	)
    (:init
        (adjwe xy-2-9 xy-3-9) (adjwe xy-2-10 xy-3-10) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-7 xy-4-7) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-10 xy-4-10) (adjwe xy-4-4 xy-5-4) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-10 xy-5-10) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-7 xy-6-7) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-10 xy-6-10) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-10 xy-7-10) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-10 xy-8-10) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-9 xy-9-9) (adjwe xy-8-10 xy-9-10) (adjwe xy-8-11 xy-9-11) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-1-5 xy-1-6) (adjsn xy-1-6 xy-1-7) (adjsn xy-2-9 xy-2-10) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-6 xy-3-7) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-9 xy-3-10) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-4 xy-4-5) (adjsn xy-4-9 xy-4-10) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-6 xy-5-7) (adjsn xy-5-7 xy-5-8) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-9 xy-5-10) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-8-9 xy-8-10) (adjsn xy-8-10 xy-8-11) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-10-4 xy-10-5)

        (crate_at xy-7-10) (crate_at xy-5-9) (crate_at xy-9-9) (crate_at xy-3-8) (crate_at xy-4-7) (crate_at xy-9-5) (crate_at xy-3-4) (crate_at xy-6-4)
        (sokoban_at xy-9-11)
    )
    (:goal (and (crate_at xy-5-8) (crate_at xy-6-8) (crate_at xy-7-8) (crate_at xy-5-7) (crate_at xy-6-7) (crate_at xy-7-7) (crate_at xy-5-6) (crate_at xy-7-6)))
)


