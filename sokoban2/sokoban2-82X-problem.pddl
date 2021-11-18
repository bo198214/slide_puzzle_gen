(define (problem sokoban2-82X)
    (:domain sokoban)
    (:objects
        xy-4-11 xy-4-9 xy-8-9 xy-5-8 xy-6-8 xy-8-8 xy-9-8 xy-6-7 xy-9-7 xy-7-5 xy-6-4 xy-7-4 xy-14-9 xy-15-9 xy-16-9 xy-14-8 xy-15-8 xy-16-8 xy-14-7 xy-15-7 xy-16-7 xy-14-6 xy-15-6 xy-16-6 xy-1-14 xy-2-14 xy-3-14 xy-4-14 xy-1-13 xy-6-13 xy-7-13 xy-8-13 xy-9-13 xy-1-12 xy-3-12 xy-4-12 xy-5-12 xy-6-12 xy-9-12 xy-1-11 xy-3-11 xy-5-11 xy-6-11 xy-7-11 xy-8-11 xy-9-11 xy-4-10 xy-9-10 xy-2-9 xy-3-9 xy-5-9 xy-6-9 xy-7-9 xy-9-9 xy-12-9 xy-13-9 xy-2-8 xy-3-8 xy-4-8 xy-7-8 xy-10-8 xy-11-8 xy-12-8 xy-13-8 xy-2-7 xy-3-7 xy-4-7 xy-5-7 xy-7-7 xy-8-7 xy-12-7 xy-13-7 xy-6-6 xy-9-6 xy-12-6 xy-13-6 xy-1-5 xy-5-5 xy-6-5 xy-8-5 xy-9-5 xy-1-4 xy-3-4 xy-4-4 xy-5-4 xy-8-4 xy-9-4 xy-1-3 xy-3-3 xy-4-3 xy-5-3 xy-6-3 xy-8-3 xy-9-3 xy-1-2 xy-3-6
	)
    (:init
        (adjwe xy-2-7 xy-3-7) (adjwe xy-2-8 xy-3-8) (adjwe xy-2-9 xy-3-9) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-7 xy-4-7) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-12 xy-4-12) (adjwe xy-4-3 xy-5-3) (adjwe xy-4-4 xy-5-4) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-11 xy-5-11) (adjwe xy-4-12 xy-5-12) (adjwe xy-5-3 xy-6-3) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-7 xy-6-7) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-9 xy-6-9) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-12 xy-6-12) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-9 xy-7-9) (adjwe xy-6-11 xy-7-11) (adjwe xy-6-13 xy-7-13) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-9 xy-8-9) (adjwe xy-7-11 xy-8-11) (adjwe xy-7-13 xy-8-13) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-9 xy-9-9) (adjwe xy-8-11 xy-9-11) (adjwe xy-8-13 xy-9-13) (adjwe xy-9-8 xy-10-8) (adjwe xy-10-8 xy-11-8) (adjwe xy-11-8 xy-12-8) (adjwe xy-12-6 xy-13-6) (adjwe xy-12-7 xy-13-7) (adjwe xy-12-8 xy-13-8) (adjwe xy-12-9 xy-13-9) (adjwe xy-13-6 xy-14-6) (adjwe xy-13-7 xy-14-7) (adjwe xy-13-8 xy-14-8) (adjwe xy-13-9 xy-14-9) (adjwe xy-14-6 xy-15-6) (adjwe xy-14-7 xy-15-7) (adjwe xy-14-8 xy-15-8) (adjwe xy-14-9 xy-15-9) (adjwe xy-15-6 xy-16-6) (adjwe xy-15-7 xy-16-7) (adjwe xy-15-8 xy-16-8) (adjwe xy-15-9 xy-16-9)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-1-11 xy-1-12) (adjsn xy-1-12 xy-1-13) (adjsn xy-1-13 xy-1-14) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-8 xy-2-9) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-6 xy-3-7) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-11 xy-3-12) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-7 xy-5-8) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-11 xy-5-12) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-12 xy-6-13) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-8 xy-7-9) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-7 xy-8-8) (adjsn xy-8-8 xy-8-9) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-12 xy-9-13) (adjsn xy-12-6 xy-12-7) (adjsn xy-12-7 xy-12-8) (adjsn xy-12-8 xy-12-9) (adjsn xy-13-6 xy-13-7) (adjsn xy-13-7 xy-13-8) (adjsn xy-13-8 xy-13-9) (adjsn xy-14-6 xy-14-7) (adjsn xy-14-7 xy-14-8) (adjsn xy-14-8 xy-14-9) (adjsn xy-15-6 xy-15-7) (adjsn xy-15-7 xy-15-8) (adjsn xy-15-8 xy-15-9) (adjsn xy-16-6 xy-16-7) (adjsn xy-16-7 xy-16-8) (adjsn xy-16-8 xy-16-9)

        (crate_at xy-4-11) (crate_at xy-4-9) (crate_at xy-8-9) (crate_at xy-5-8) (crate_at xy-6-8) (crate_at xy-8-8) (crate_at xy-9-8) (crate_at xy-6-7) (crate_at xy-9-7) (crate_at xy-7-5) (crate_at xy-6-4) (crate_at xy-7-4)
        (sokoban_at xy-3-6)
    )
    (:goal (and (crate_at xy-14-9) (crate_at xy-15-9) (crate_at xy-16-9) (crate_at xy-14-8) (crate_at xy-15-8) (crate_at xy-16-8) (crate_at xy-14-7) (crate_at xy-15-7) (crate_at xy-16-7) (crate_at xy-14-6) (crate_at xy-15-6) (crate_at xy-16-6)))
)


