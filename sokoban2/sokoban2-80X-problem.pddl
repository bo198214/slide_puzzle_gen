(define (problem sokoban2-80X)
    (:domain sokoban)
    (:objects
        xy-3-11 xy-3-10 xy-4-10 xy-4-9 xy-9-9 xy-9-8 xy-6-7 xy-9-7 xy-4-6 xy-9-6 xy-3-5 xy-4-4 xy-16-13 xy-17-13 xy-18-13 xy-16-12 xy-17-12 xy-18-12 xy-16-11 xy-17-11 xy-18-11 xy-16-10 xy-17-10 xy-18-10 xy-1-14 xy-2-14 xy-7-13 xy-8-13 xy-9-13 xy-10-13 xy-11-13 xy-12-13 xy-13-13 xy-14-13 xy-15-13 xy-2-12 xy-3-12 xy-4-12 xy-5-12 xy-7-12 xy-8-12 xy-9-12 xy-10-12 xy-11-12 xy-12-12 xy-13-12 xy-14-12 xy-15-12 xy-2-11 xy-4-11 xy-5-11 xy-7-11 xy-8-11 xy-9-11 xy-10-11 xy-11-11 xy-12-11 xy-13-11 xy-14-11 xy-15-11 xy-2-10 xy-5-10 xy-7-10 xy-8-10 xy-9-10 xy-10-10 xy-11-10 xy-12-10 xy-13-10 xy-14-10 xy-15-10 xy-3-9 xy-5-9 xy-1-8 xy-3-8 xy-7-8 xy-8-8 xy-10-8 xy-3-7 xy-4-7 xy-5-7 xy-7-7 xy-8-7 xy-10-7 xy-2-6 xy-3-6 xy-5-6 xy-7-6 xy-8-6 xy-10-6 xy-2-5 xy-4-5 xy-5-5 xy-7-5 xy-8-5 xy-9-5 xy-10-5 xy-2-4 xy-3-4 xy-5-4 xy-7-4 xy-8-4 xy-9-4 xy-10-4 xy-2-3 xy-3-3 xy-4-3 xy-5-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-4-13
	)
    (:init
        (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-5 xy-3-5) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-10 xy-3-10) (adjwe xy-2-11 xy-3-11) (adjwe xy-2-12 xy-3-12) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-7 xy-4-7) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-10 xy-4-10) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-12 xy-4-12) (adjwe xy-4-3 xy-5-3) (adjwe xy-4-4 xy-5-4) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-6 xy-5-6) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-11 xy-5-11) (adjwe xy-4-12 xy-5-12) (adjwe xy-5-7 xy-6-7) (adjwe xy-6-7 xy-7-7) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-6 xy-8-6) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-10 xy-8-10) (adjwe xy-7-11 xy-8-11) (adjwe xy-7-12 xy-8-12) (adjwe xy-7-13 xy-8-13) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-6 xy-9-6) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-10 xy-9-10) (adjwe xy-8-11 xy-9-11) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-13 xy-9-13) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-10 xy-10-10) (adjwe xy-9-11 xy-10-11) (adjwe xy-9-12 xy-10-12) (adjwe xy-9-13 xy-10-13) (adjwe xy-10-10 xy-11-10) (adjwe xy-10-11 xy-11-11) (adjwe xy-10-12 xy-11-12) (adjwe xy-10-13 xy-11-13) (adjwe xy-11-10 xy-12-10) (adjwe xy-11-11 xy-12-11) (adjwe xy-11-12 xy-12-12) (adjwe xy-11-13 xy-12-13) (adjwe xy-12-10 xy-13-10) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-12 xy-13-12) (adjwe xy-12-13 xy-13-13) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-13-12 xy-14-12) (adjwe xy-13-13 xy-14-13) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-11 xy-15-11) (adjwe xy-14-12 xy-15-12) (adjwe xy-14-13 xy-15-13) (adjwe xy-15-10 xy-16-10) (adjwe xy-15-11 xy-16-11) (adjwe xy-15-12 xy-16-12) (adjwe xy-15-13 xy-16-13) (adjwe xy-16-10 xy-17-10) (adjwe xy-16-11 xy-17-11) (adjwe xy-16-12 xy-17-12) (adjwe xy-16-13 xy-17-13) (adjwe xy-17-10 xy-18-10) (adjwe xy-17-11 xy-18-11) (adjwe xy-17-12 xy-18-12) (adjwe xy-17-13 xy-18-13)
        (adjsn xy-2-3 xy-2-4) (adjsn xy-2-4 xy-2-5) (adjsn xy-2-5 xy-2-6) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-6 xy-3-7) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-9 xy-3-10) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-4 xy-4-5) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-12 xy-4-13) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-6 xy-5-7) (adjsn xy-5-9 xy-5-10) (adjsn xy-5-10 xy-5-11) (adjsn xy-5-11 xy-5-12) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-10 xy-7-11) (adjsn xy-7-11 xy-7-12) (adjsn xy-7-12 xy-7-13) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-5 xy-8-6) (adjsn xy-8-6 xy-8-7) (adjsn xy-8-7 xy-8-8) (adjsn xy-8-10 xy-8-11) (adjsn xy-8-11 xy-8-12) (adjsn xy-8-12 xy-8-13) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-12 xy-9-13) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-6 xy-10-7) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-10 xy-10-11) (adjsn xy-10-11 xy-10-12) (adjsn xy-10-12 xy-10-13) (adjsn xy-11-10 xy-11-11) (adjsn xy-11-11 xy-11-12) (adjsn xy-11-12 xy-11-13) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-13-10 xy-13-11) (adjsn xy-13-11 xy-13-12) (adjsn xy-13-12 xy-13-13) (adjsn xy-14-10 xy-14-11) (adjsn xy-14-11 xy-14-12) (adjsn xy-14-12 xy-14-13) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-15-12 xy-15-13) (adjsn xy-16-10 xy-16-11) (adjsn xy-16-11 xy-16-12) (adjsn xy-16-12 xy-16-13) (adjsn xy-17-10 xy-17-11) (adjsn xy-17-11 xy-17-12) (adjsn xy-17-12 xy-17-13) (adjsn xy-18-10 xy-18-11) (adjsn xy-18-11 xy-18-12) (adjsn xy-18-12 xy-18-13)

        (crate_at xy-3-11) (crate_at xy-3-10) (crate_at xy-4-10) (crate_at xy-4-9) (crate_at xy-9-9) (crate_at xy-9-8) (crate_at xy-6-7) (crate_at xy-9-7) (crate_at xy-4-6) (crate_at xy-9-6) (crate_at xy-3-5) (crate_at xy-4-4)
        (sokoban_at xy-4-13)
    )
    (:goal (and (crate_at xy-16-13) (crate_at xy-17-13) (crate_at xy-18-13) (crate_at xy-16-12) (crate_at xy-17-12) (crate_at xy-18-12) (crate_at xy-16-11) (crate_at xy-17-11) (crate_at xy-18-11) (crate_at xy-16-10) (crate_at xy-17-10) (crate_at xy-18-10)))
)

