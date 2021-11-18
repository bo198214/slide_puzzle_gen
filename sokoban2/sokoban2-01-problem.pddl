(define (problem sokoban2-01)
    (:domain sokoban)
    (:objects
        xy-6-10 xy-8-9 xy-6-8 xy-8-8 xy-3-5 xy-6-5 xy-17-6 xy-18-6 xy-17-5 xy-18-5 xy-17-4 xy-18-4 xy-1-12 xy-2-12 xy-3-12 xy-4-12 xy-1-11 xy-2-11 xy-3-11 xy-4-11 xy-6-11 xy-7-11 xy-8-11 xy-1-10 xy-2-10 xy-3-10 xy-4-10 xy-7-10 xy-8-10 xy-1-9 xy-2-9 xy-6-9 xy-7-9 xy-1-8 xy-2-8 xy-4-8 xy-5-8 xy-7-8 xy-9-8 xy-4-7 xy-6-7 xy-9-7 xy-11-7 xy-12-7 xy-13-7 xy-2-6 xy-3-6 xy-4-6 xy-6-6 xy-9-6 xy-15-6 xy-16-6 xy-2-5 xy-4-5 xy-5-5 xy-7-5 xy-8-5 xy-9-5 xy-10-5 xy-11-5 xy-12-5 xy-13-5 xy-14-5 xy-15-5 xy-16-5 xy-6-4 xy-10-4 xy-15-4 xy-16-4 xy-1-3 xy-2-3 xy-3-3 xy-4-3 xy-6-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-1-2 xy-2-2 xy-3-2 xy-4-2 xy-12-4
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-8 xy-2-8) (adjwe xy-1-9 xy-2-9) (adjwe xy-1-10 xy-2-10) (adjwe xy-1-11 xy-2-11) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-5 xy-3-5) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-10 xy-3-10) (adjwe xy-2-11 xy-3-11) (adjwe xy-3-2 xy-4-2) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-10 xy-4-10) (adjwe xy-3-11 xy-4-11) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-8 xy-5-8) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-8 xy-6-8) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-9 xy-7-9) (adjwe xy-6-10 xy-7-10) (adjwe xy-6-11 xy-7-11) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-9 xy-8-9) (adjwe xy-7-10 xy-8-10) (adjwe xy-7-11 xy-8-11) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-8 xy-9-8) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-5 xy-10-5) (adjwe xy-10-5 xy-11-5) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-7 xy-12-7) (adjwe xy-12-5 xy-13-5) (adjwe xy-12-7 xy-13-7) (adjwe xy-13-5 xy-14-5) (adjwe xy-14-5 xy-15-5) (adjwe xy-15-4 xy-16-4) (adjwe xy-15-5 xy-16-5) (adjwe xy-15-6 xy-16-6) (adjwe xy-16-4 xy-17-4) (adjwe xy-16-5 xy-17-5) (adjwe xy-16-6 xy-17-6) (adjwe xy-17-4 xy-18-4) (adjwe xy-17-5 xy-18-5) (adjwe xy-17-6 xy-18-6)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-8 xy-1-9) (adjsn xy-1-9 xy-1-10) (adjsn xy-1-10 xy-1-11) (adjsn xy-1-11 xy-1-12) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-5 xy-2-6) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-4-2 xy-4-3) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-9 xy-6-10) (adjsn xy-6-10 xy-6-11) (adjsn xy-7-8 xy-7-9) (adjsn xy-7-9 xy-7-10) (adjsn xy-7-10 xy-7-11) (adjsn xy-8-8 xy-8-9) (adjsn xy-8-9 xy-8-10) (adjsn xy-8-10 xy-8-11) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-12-4 xy-12-5) (adjsn xy-15-4 xy-15-5) (adjsn xy-15-5 xy-15-6) (adjsn xy-16-4 xy-16-5) (adjsn xy-16-5 xy-16-6) (adjsn xy-17-4 xy-17-5) (adjsn xy-17-5 xy-17-6) (adjsn xy-18-4 xy-18-5) (adjsn xy-18-5 xy-18-6)

        (crate_at xy-6-10) (crate_at xy-8-9) (crate_at xy-6-8) (crate_at xy-8-8) (crate_at xy-3-5) (crate_at xy-6-5)
        (sokoban_at xy-12-4)
    )
    (:goal (and (crate_at xy-17-6) (crate_at xy-18-6) (crate_at xy-17-5) (crate_at xy-18-5) (crate_at xy-17-4) (crate_at xy-18-4)))
)


