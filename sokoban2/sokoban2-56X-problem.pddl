(define (problem sokoban2-56X)
    (:domain sokoban)
    (:objects
        xy-7-11 xy-14-11 xy-3-10 xy-6-10 xy-10-10 xy-13-10 xy-15-10 xy-5-9 xy-11-9 xy-8-8 xy-5-7 xy-6-6 xy-8-6 xy-3-5 xy-10-5 xy-6-4 xy-16-8 xy-17-8 xy-18-8 xy-19-8 xy-15-7 xy-16-7 xy-17-7 xy-18-7 xy-14-6 xy-15-6 xy-16-6 xy-17-6 xy-13-5 xy-14-5 xy-15-5 xy-16-5 xy-2-12 xy-3-12 xy-5-12 xy-6-12 xy-9-12 xy-10-12 xy-11-12 xy-12-12 xy-14-12 xy-15-12 xy-16-12 xy-3-11 xy-4-11 xy-5-11 xy-6-11 xy-8-11 xy-9-11 xy-10-11 xy-11-11 xy-13-11 xy-18-11 xy-19-11 xy-5-10 xy-7-10 xy-12-10 xy-14-10 xy-16-10 xy-17-10 xy-18-10 xy-19-10 xy-2-9 xy-3-9 xy-4-9 xy-7-9 xy-8-9 xy-9-9 xy-10-9 xy-12-9 xy-13-9 xy-14-9 xy-15-9 xy-16-9 xy-17-9 xy-2-8 xy-5-8 xy-6-8 xy-7-8 xy-9-8 xy-13-8 xy-14-8 xy-2-7 xy-4-7 xy-7-7 xy-9-7 xy-11-7 xy-13-7 xy-2-6 xy-3-6 xy-4-6 xy-5-6 xy-7-6 xy-9-6 xy-11-6 xy-12-6 xy-4-5 xy-8-5 xy-9-5 xy-11-5 xy-2-4 xy-3-4 xy-5-4 xy-7-4 xy-8-4 xy-9-4 xy-10-4 xy-11-4 xy-12-4 xy-13-4 xy-14-4 xy-2-3 xy-3-3 xy-4-3 xy-5-3 xy-6-3 xy-7-3 xy-9-3 xy-11-3 xy-12-3 xy-13-3 xy-14-3 xy-17-12
	)
    (:init
        (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-9 xy-3-9) (adjwe xy-2-12 xy-3-12) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-11 xy-4-11) (adjwe xy-4-3 xy-5-3) (adjwe xy-4-6 xy-5-6) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-11 xy-5-11) (adjwe xy-5-3 xy-6-3) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-10 xy-6-10) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-12 xy-6-12) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-10 xy-7-10) (adjwe xy-6-11 xy-7-11) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-6 xy-8-6) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-9 xy-8-9) (adjwe xy-7-11 xy-8-11) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-6 xy-9-6) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-9 xy-9-9) (adjwe xy-8-11 xy-9-11) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-9 xy-10-9) (adjwe xy-9-11 xy-10-11) (adjwe xy-9-12 xy-10-12) (adjwe xy-10-4 xy-11-4) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-9 xy-11-9) (adjwe xy-10-11 xy-11-11) (adjwe xy-10-12 xy-11-12) (adjwe xy-11-3 xy-12-3) (adjwe xy-11-4 xy-12-4) (adjwe xy-11-6 xy-12-6) (adjwe xy-11-9 xy-12-9) (adjwe xy-11-12 xy-12-12) (adjwe xy-12-3 xy-13-3) (adjwe xy-12-4 xy-13-4) (adjwe xy-12-9 xy-13-9) (adjwe xy-12-10 xy-13-10) (adjwe xy-13-3 xy-14-3) (adjwe xy-13-4 xy-14-4) (adjwe xy-13-5 xy-14-5) (adjwe xy-13-8 xy-14-8) (adjwe xy-13-9 xy-14-9) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-14-5 xy-15-5) (adjwe xy-14-6 xy-15-6) (adjwe xy-14-9 xy-15-9) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-12 xy-15-12) (adjwe xy-15-5 xy-16-5) (adjwe xy-15-6 xy-16-6) (adjwe xy-15-7 xy-16-7) (adjwe xy-15-9 xy-16-9) (adjwe xy-15-10 xy-16-10) (adjwe xy-15-12 xy-16-12) (adjwe xy-16-6 xy-17-6) (adjwe xy-16-7 xy-17-7) (adjwe xy-16-8 xy-17-8) (adjwe xy-16-9 xy-17-9) (adjwe xy-16-10 xy-17-10) (adjwe xy-16-12 xy-17-12) (adjwe xy-17-7 xy-18-7) (adjwe xy-17-8 xy-18-8) (adjwe xy-17-10 xy-18-10) (adjwe xy-18-8 xy-19-8) (adjwe xy-18-10 xy-19-10) (adjwe xy-18-11 xy-19-11)
        (adjsn xy-2-3 xy-2-4) (adjsn xy-2-6 xy-2-7) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-8 xy-2-9) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-9 xy-3-10) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-6 xy-4-7) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-6 xy-5-7) (adjsn xy-5-7 xy-5-8) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-9 xy-5-10) (adjsn xy-5-10 xy-5-11) (adjsn xy-5-11 xy-5-12) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-11 xy-6-12) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-8 xy-7-9) (adjsn xy-7-9 xy-7-10) (adjsn xy-7-10 xy-7-11) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-5 xy-8-6) (adjsn xy-8-8 xy-8-9) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-11 xy-9-12) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-9 xy-10-10) (adjsn xy-10-10 xy-10-11) (adjsn xy-10-11 xy-10-12) (adjsn xy-11-3 xy-11-4) (adjsn xy-11-4 xy-11-5) (adjsn xy-11-5 xy-11-6) (adjsn xy-11-6 xy-11-7) (adjsn xy-11-11 xy-11-12) (adjsn xy-12-3 xy-12-4) (adjsn xy-12-9 xy-12-10) (adjsn xy-13-3 xy-13-4) (adjsn xy-13-4 xy-13-5) (adjsn xy-13-7 xy-13-8) (adjsn xy-13-8 xy-13-9) (adjsn xy-13-9 xy-13-10) (adjsn xy-13-10 xy-13-11) (adjsn xy-14-3 xy-14-4) (adjsn xy-14-4 xy-14-5) (adjsn xy-14-5 xy-14-6) (adjsn xy-14-8 xy-14-9) (adjsn xy-14-9 xy-14-10) (adjsn xy-14-10 xy-14-11) (adjsn xy-14-11 xy-14-12) (adjsn xy-15-5 xy-15-6) (adjsn xy-15-6 xy-15-7) (adjsn xy-15-9 xy-15-10) (adjsn xy-16-5 xy-16-6) (adjsn xy-16-6 xy-16-7) (adjsn xy-16-7 xy-16-8) (adjsn xy-16-8 xy-16-9) (adjsn xy-16-9 xy-16-10) (adjsn xy-17-6 xy-17-7) (adjsn xy-17-7 xy-17-8) (adjsn xy-17-8 xy-17-9) (adjsn xy-17-9 xy-17-10) (adjsn xy-18-7 xy-18-8) (adjsn xy-18-10 xy-18-11) (adjsn xy-19-10 xy-19-11)

        (crate_at xy-7-11) (crate_at xy-14-11) (crate_at xy-3-10) (crate_at xy-6-10) (crate_at xy-10-10) (crate_at xy-13-10) (crate_at xy-15-10) (crate_at xy-5-9) (crate_at xy-11-9) (crate_at xy-8-8) (crate_at xy-5-7) (crate_at xy-6-6) (crate_at xy-8-6) (crate_at xy-3-5) (crate_at xy-10-5) (crate_at xy-6-4)
        (sokoban_at xy-17-12)
    )
    (:goal (and (crate_at xy-16-8) (crate_at xy-17-8) (crate_at xy-18-8) (crate_at xy-19-8) (crate_at xy-15-7) (crate_at xy-16-7) (crate_at xy-17-7) (crate_at xy-18-7) (crate_at xy-14-6) (crate_at xy-15-6) (crate_at xy-16-6) (crate_at xy-17-6) (crate_at xy-13-5) (crate_at xy-14-5) (crate_at xy-15-5) (crate_at xy-16-5)))
)

