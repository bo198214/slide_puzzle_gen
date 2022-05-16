(define (problem sokoban2-09)
    (:domain sokoban)
    (:objects
        xy-8-8 xy-9-8 xy-10-8 xy-9-7 xy-11-7 xy-7-6 xy-9-6 xy-4-5 xy-7-5 xy-12-5 xy-15-5 xy-8-4 xy-9-4 xy-11-4 xy-14-14 xy-15-14 xy-16-14 xy-14-13 xy-15-13 xy-16-13 xy-14-12 xy-16-12 xy-14-11 xy-15-11 xy-16-11 xy-14-10 xy-15-10 xy-16-10 xy-1-15 xy-2-15 xy-3-15 xy-4-15 xy-5-15 xy-6-15 xy-7-15 xy-8-15 xy-9-15 xy-10-15 xy-1-14 xy-2-14 xy-3-14 xy-4-14 xy-5-14 xy-6-14 xy-7-14 xy-8-14 xy-9-14 xy-10-14 xy-12-14 xy-13-14 xy-1-13 xy-2-13 xy-3-13 xy-4-13 xy-5-13 xy-6-13 xy-12-13 xy-13-13 xy-1-12 xy-2-12 xy-3-12 xy-4-12 xy-5-12 xy-6-12 xy-8-12 xy-9-12 xy-10-12 xy-11-12 xy-12-12 xy-13-12 xy-15-12 xy-1-11 xy-2-11 xy-3-11 xy-4-11 xy-5-11 xy-6-11 xy-8-11 xy-9-11 xy-12-11 xy-13-11 xy-1-10 xy-2-10 xy-3-10 xy-4-10 xy-5-10 xy-6-10 xy-9-10 xy-12-10 xy-13-10 xy-1-9 xy-2-9 xy-3-9 xy-4-9 xy-5-9 xy-9-9 xy-1-8 xy-2-8 xy-3-8 xy-4-8 xy-5-8 xy-7-8 xy-11-8 xy-1-7 xy-7-7 xy-8-7 xy-10-7 xy-12-7 xy-3-6 xy-4-6 xy-5-6 xy-8-6 xy-10-6 xy-11-6 xy-12-6 xy-14-6 xy-15-6 xy-16-6 xy-3-5 xy-5-5 xy-6-5 xy-8-5 xy-9-5 xy-10-5 xy-11-5 xy-13-5 xy-14-5 xy-16-5 xy-7-4 xy-10-4 xy-12-4 xy-1-3 xy-2-3 xy-3-3 xy-4-3 xy-5-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-11-3 xy-12-3 xy-1-2 xy-2-2 xy-3-2 xy-4-2 xy-5-2 xy-2-5
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-8 xy-2-8) (adjwe xy-1-9 xy-2-9) (adjwe xy-1-10 xy-2-10) (adjwe xy-1-11 xy-2-11) (adjwe xy-1-12 xy-2-12) (adjwe xy-1-13 xy-2-13) (adjwe xy-1-14 xy-2-14) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-5 xy-3-5) (adjwe xy-2-8 xy-3-8) (adjwe xy-2-9 xy-3-9) (adjwe xy-2-10 xy-3-10) (adjwe xy-2-11 xy-3-11) (adjwe xy-2-12 xy-3-12) (adjwe xy-2-13 xy-3-13) (adjwe xy-2-14 xy-3-14) (adjwe xy-3-2 xy-4-2) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-10 xy-4-10) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-12 xy-4-12) (adjwe xy-3-13 xy-4-13) (adjwe xy-3-14 xy-4-14) (adjwe xy-4-2 xy-5-2) (adjwe xy-4-3 xy-5-3) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-6 xy-5-6) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-11 xy-5-11) (adjwe xy-4-12 xy-5-12) (adjwe xy-4-13 xy-5-13) (adjwe xy-4-14 xy-5-14) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-10 xy-6-10) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-12 xy-6-12) (adjwe xy-5-13 xy-6-13) (adjwe xy-5-14 xy-6-14) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-14 xy-7-14) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-6 xy-8-6) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-14 xy-8-14) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-6 xy-9-6) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-11 xy-9-11) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-14 xy-9-14) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-12 xy-10-12) (adjwe xy-9-14 xy-10-14) (adjwe xy-10-3 xy-11-3) (adjwe xy-10-4 xy-11-4) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-6 xy-11-6) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-8 xy-11-8) (adjwe xy-10-12 xy-11-12) (adjwe xy-11-3 xy-12-3) (adjwe xy-11-4 xy-12-4) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-6 xy-12-6) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-12 xy-12-12) (adjwe xy-12-5 xy-13-5) (adjwe xy-12-10 xy-13-10) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-12 xy-13-12) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-14 xy-13-14) (adjwe xy-13-5 xy-14-5) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-13-12 xy-14-12) (adjwe xy-13-13 xy-14-13) (adjwe xy-13-14 xy-14-14) (adjwe xy-14-5 xy-15-5) (adjwe xy-14-6 xy-15-6) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-11 xy-15-11) (adjwe xy-14-12 xy-15-12) (adjwe xy-14-13 xy-15-13) (adjwe xy-14-14 xy-15-14) (adjwe xy-15-5 xy-16-5) (adjwe xy-15-6 xy-16-6) (adjwe xy-15-10 xy-16-10) (adjwe xy-15-11 xy-16-11) (adjwe xy-15-12 xy-16-12) (adjwe xy-15-13 xy-16-13) (adjwe xy-15-14 xy-16-14)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-7 xy-1-8) (adjsn xy-1-8 xy-1-9) (adjsn xy-1-9 xy-1-10) (adjsn xy-1-10 xy-1-11) (adjsn xy-1-11 xy-1-12) (adjsn xy-1-12 xy-1-13) (adjsn xy-1-13 xy-1-14) (adjsn xy-1-14 xy-1-15) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-2-12 xy-2-13) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-9 xy-3-10) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-3-12 xy-3-13) (adjsn xy-3-13 xy-3-14) (adjsn xy-3-14 xy-3-15) (adjsn xy-4-2 xy-4-3) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-12 xy-4-13) (adjsn xy-4-13 xy-4-14) (adjsn xy-4-14 xy-4-15) (adjsn xy-5-2 xy-5-3) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-9 xy-5-10) (adjsn xy-5-10 xy-5-11) (adjsn xy-5-11 xy-5-12) (adjsn xy-5-12 xy-5-13) (adjsn xy-5-13 xy-5-14) (adjsn xy-5-14 xy-5-15) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-12 xy-6-13) (adjsn xy-6-13 xy-6-14) (adjsn xy-6-14 xy-6-15) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-14 xy-7-15) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-5 xy-8-6) (adjsn xy-8-6 xy-8-7) (adjsn xy-8-7 xy-8-8) (adjsn xy-8-11 xy-8-12) (adjsn xy-8-14 xy-8-15) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-14 xy-9-15) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-6 xy-10-7) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-14 xy-10-15) (adjsn xy-11-3 xy-11-4) (adjsn xy-11-4 xy-11-5) (adjsn xy-11-5 xy-11-6) (adjsn xy-11-6 xy-11-7) (adjsn xy-11-7 xy-11-8) (adjsn xy-12-3 xy-12-4) (adjsn xy-12-4 xy-12-5) (adjsn xy-12-5 xy-12-6) (adjsn xy-12-6 xy-12-7) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-12-13 xy-12-14) (adjsn xy-13-10 xy-13-11) (adjsn xy-13-11 xy-13-12) (adjsn xy-13-12 xy-13-13) (adjsn xy-13-13 xy-13-14) (adjsn xy-14-5 xy-14-6) (adjsn xy-14-10 xy-14-11) (adjsn xy-14-11 xy-14-12) (adjsn xy-14-12 xy-14-13) (adjsn xy-14-13 xy-14-14) (adjsn xy-15-5 xy-15-6) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-15-12 xy-15-13) (adjsn xy-15-13 xy-15-14) (adjsn xy-16-5 xy-16-6) (adjsn xy-16-10 xy-16-11) (adjsn xy-16-11 xy-16-12) (adjsn xy-16-12 xy-16-13) (adjsn xy-16-13 xy-16-14)

        (crate_at xy-8-8) (crate_at xy-9-8) (crate_at xy-10-8) (crate_at xy-9-7) (crate_at xy-11-7) (crate_at xy-7-6) (crate_at xy-9-6) (crate_at xy-4-5) (crate_at xy-7-5) (crate_at xy-12-5) (crate_at xy-15-5) (crate_at xy-8-4) (crate_at xy-9-4) (crate_at xy-11-4)
        (sokoban_at xy-2-5)
    )
    (:goal (and (crate_at xy-14-14) (crate_at xy-15-14) (crate_at xy-16-14) (crate_at xy-14-13) (crate_at xy-15-13) (crate_at xy-16-13) (crate_at xy-14-12) (crate_at xy-16-12) (crate_at xy-14-11) (crate_at xy-15-11) (crate_at xy-16-11) (crate_at xy-14-10) (crate_at xy-15-10) (crate_at xy-16-10)))
)

