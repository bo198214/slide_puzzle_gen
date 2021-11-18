(define (problem sokoban2-06)
    (:domain sokoban)
    (:objects
        xy-9-9 xy-10-9 xy-10-8 xy-10-7 xy-6-6 xy-9-6 xy-7-5 xy-10-5 xy-6-4 xy-9-4 xy-2-11 xy-3-11 xy-2-10 xy-3-10 xy-2-9 xy-3-9 xy-2-8 xy-3-8 xy-2-7 xy-3-7 xy-7-12 xy-8-12 xy-4-11 xy-5-11 xy-7-11 xy-4-10 xy-5-10 xy-9-10 xy-10-10 xy-11-10 xy-4-9 xy-5-9 xy-6-9 xy-7-9 xy-8-9 xy-11-9 xy-4-8 xy-5-8 xy-7-8 xy-9-8 xy-11-8 xy-7-7 xy-9-7 xy-11-7 xy-5-6 xy-7-6 xy-10-6 xy-11-6 xy-1-5 xy-2-5 xy-3-5 xy-5-5 xy-6-5 xy-9-5 xy-11-5 xy-1-4 xy-2-4 xy-3-4 xy-5-4 xy-7-4 xy-8-4 xy-10-4 xy-11-4 xy-1-3 xy-2-3 xy-3-3 xy-5-3 xy-6-3 xy-9-3 xy-10-3 xy-11-3 xy-1-2 xy-2-2 xy-3-2 xy-10-11
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-4 xy-2-4) (adjwe xy-1-5 xy-2-5) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-5 xy-3-5) (adjwe xy-2-7 xy-3-7) (adjwe xy-2-8 xy-3-8) (adjwe xy-2-9 xy-3-9) (adjwe xy-2-10 xy-3-10) (adjwe xy-2-11 xy-3-11) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-10 xy-4-10) (adjwe xy-3-11 xy-4-11) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-11 xy-5-11) (adjwe xy-5-3 xy-6-3) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-9 xy-6-9) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-9 xy-7-9) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-9 xy-8-9) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-9 xy-9-9) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-9 xy-10-9) (adjwe xy-9-10 xy-10-10) (adjwe xy-10-3 xy-11-3) (adjwe xy-10-4 xy-11-4) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-6 xy-11-6) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-8 xy-11-8) (adjwe xy-10-9 xy-11-9) (adjwe xy-10-10 xy-11-10)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-4 xy-2-5) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-9 xy-3-10) (adjsn xy-3-10 xy-3-11) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-9 xy-5-10) (adjsn xy-5-10 xy-5-11) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-8 xy-7-9) (adjsn xy-7-11 xy-7-12) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-6 xy-10-7) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-8 xy-10-9) (adjsn xy-10-9 xy-10-10) (adjsn xy-10-10 xy-10-11) (adjsn xy-11-3 xy-11-4) (adjsn xy-11-4 xy-11-5) (adjsn xy-11-5 xy-11-6) (adjsn xy-11-6 xy-11-7) (adjsn xy-11-7 xy-11-8) (adjsn xy-11-8 xy-11-9) (adjsn xy-11-9 xy-11-10)

        (crate_at xy-9-9) (crate_at xy-10-9) (crate_at xy-10-8) (crate_at xy-10-7) (crate_at xy-6-6) (crate_at xy-9-6) (crate_at xy-7-5) (crate_at xy-10-5) (crate_at xy-6-4) (crate_at xy-9-4)
        (sokoban_at xy-10-11)
    )
    (:goal (and (crate_at xy-2-11) (crate_at xy-3-11) (crate_at xy-2-10) (crate_at xy-3-10) (crate_at xy-2-9) (crate_at xy-3-9) (crate_at xy-2-8) (crate_at xy-3-8) (crate_at xy-2-7) (crate_at xy-3-7)))
)


