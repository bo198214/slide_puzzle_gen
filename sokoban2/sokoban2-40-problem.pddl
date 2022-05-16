(define (problem sokoban2-40)
    (:domain sokoban)
    (:objects
        xy-11-15 xy-12-15 xy-14-15 xy-6-14 xy-9-14 xy-12-13 xy-8-12 xy-11-12 xy-10-11 xy-7-10 xy-9-10 xy-14-9 xy-12-8 xy-13-8 xy-7-7 xy-8-7 xy-2-6 xy-3-6 xy-4-6 xy-5-6 xy-2-5 xy-4-5 xy-5-5 xy-6-5 xy-2-4 xy-3-4 xy-4-4 xy-5-4 xy-2-3 xy-3-3 xy-4-3 xy-5-3 xy-1-17 xy-2-17 xy-3-17 xy-4-17 xy-1-16 xy-2-16 xy-3-16 xy-4-16 xy-6-16 xy-7-16 xy-8-16 xy-9-16 xy-10-16 xy-11-16 xy-12-16 xy-13-16 xy-14-16 xy-15-16 xy-1-15 xy-2-15 xy-3-15 xy-4-15 xy-6-15 xy-7-15 xy-9-15 xy-13-15 xy-15-15 xy-16-15 xy-1-14 xy-2-14 xy-3-14 xy-4-14 xy-7-14 xy-11-14 xy-12-14 xy-15-14 xy-1-13 xy-2-13 xy-3-13 xy-6-13 xy-9-13 xy-11-13 xy-13-13 xy-15-13 xy-1-12 xy-2-12 xy-3-12 xy-5-12 xy-6-12 xy-7-12 xy-9-12 xy-12-12 xy-13-12 xy-15-12 xy-1-11 xy-2-11 xy-3-11 xy-5-11 xy-6-11 xy-7-11 xy-9-11 xy-11-11 xy-12-11 xy-13-11 xy-15-11 xy-1-10 xy-2-10 xy-3-10 xy-6-10 xy-8-10 xy-10-10 xy-11-10 xy-12-10 xy-15-10 xy-1-9 xy-2-9 xy-3-9 xy-5-9 xy-6-9 xy-8-9 xy-9-9 xy-12-9 xy-13-9 xy-15-9 xy-1-8 xy-2-8 xy-3-8 xy-5-8 xy-6-8 xy-7-8 xy-8-8 xy-11-8 xy-15-8 xy-9-7 xy-10-7 xy-11-7 xy-13-7 xy-14-7 xy-15-7 xy-7-6 xy-8-6 xy-7-5 xy-6-4 xy-7-4 xy-8-4 xy-6-3 xy-7-3 xy-8-3 xy-16-14
	)
    (:init
        (adjwe xy-1-8 xy-2-8) (adjwe xy-1-9 xy-2-9) (adjwe xy-1-10 xy-2-10) (adjwe xy-1-11 xy-2-11) (adjwe xy-1-12 xy-2-12) (adjwe xy-1-13 xy-2-13) (adjwe xy-1-14 xy-2-14) (adjwe xy-1-15 xy-2-15) (adjwe xy-1-16 xy-2-16) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-8 xy-3-8) (adjwe xy-2-9 xy-3-9) (adjwe xy-2-10 xy-3-10) (adjwe xy-2-11 xy-3-11) (adjwe xy-2-12 xy-3-12) (adjwe xy-2-13 xy-3-13) (adjwe xy-2-14 xy-3-14) (adjwe xy-2-15 xy-3-15) (adjwe xy-2-16 xy-3-16) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-14 xy-4-14) (adjwe xy-3-15 xy-4-15) (adjwe xy-3-16 xy-4-16) (adjwe xy-4-3 xy-5-3) (adjwe xy-4-4 xy-5-4) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-6 xy-5-6) (adjwe xy-5-3 xy-6-3) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-9 xy-6-9) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-12 xy-6-12) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-10 xy-7-10) (adjwe xy-6-11 xy-7-11) (adjwe xy-6-12 xy-7-12) (adjwe xy-6-14 xy-7-14) (adjwe xy-6-15 xy-7-15) (adjwe xy-6-16 xy-7-16) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-6 xy-8-6) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-10 xy-8-10) (adjwe xy-7-12 xy-8-12) (adjwe xy-7-16 xy-8-16) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-9 xy-9-9) (adjwe xy-8-10 xy-9-10) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-16 xy-9-16) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-10 xy-10-10) (adjwe xy-9-11 xy-10-11) (adjwe xy-9-16 xy-10-16) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-10 xy-11-10) (adjwe xy-10-11 xy-11-11) (adjwe xy-10-16 xy-11-16) (adjwe xy-11-8 xy-12-8) (adjwe xy-11-10 xy-12-10) (adjwe xy-11-11 xy-12-11) (adjwe xy-11-12 xy-12-12) (adjwe xy-11-13 xy-12-13) (adjwe xy-11-14 xy-12-14) (adjwe xy-11-15 xy-12-15) (adjwe xy-11-16 xy-12-16) (adjwe xy-12-8 xy-13-8) (adjwe xy-12-9 xy-13-9) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-12 xy-13-12) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-15 xy-13-15) (adjwe xy-12-16 xy-13-16) (adjwe xy-13-7 xy-14-7) (adjwe xy-13-9 xy-14-9) (adjwe xy-13-15 xy-14-15) (adjwe xy-13-16 xy-14-16) (adjwe xy-14-7 xy-15-7) (adjwe xy-14-9 xy-15-9) (adjwe xy-14-15 xy-15-15) (adjwe xy-14-16 xy-15-16) (adjwe xy-15-14 xy-16-14) (adjwe xy-15-15 xy-16-15)
        (adjsn xy-1-8 xy-1-9) (adjsn xy-1-9 xy-1-10) (adjsn xy-1-10 xy-1-11) (adjsn xy-1-11 xy-1-12) (adjsn xy-1-12 xy-1-13) (adjsn xy-1-13 xy-1-14) (adjsn xy-1-14 xy-1-15) (adjsn xy-1-15 xy-1-16) (adjsn xy-1-16 xy-1-17) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-4 xy-2-5) (adjsn xy-2-5 xy-2-6) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-2-12 xy-2-13) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-2-15 xy-2-16) (adjsn xy-2-16 xy-2-17) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-9 xy-3-10) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-3-12 xy-3-13) (adjsn xy-3-13 xy-3-14) (adjsn xy-3-14 xy-3-15) (adjsn xy-3-15 xy-3-16) (adjsn xy-3-16 xy-3-17) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-4 xy-4-5) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-14 xy-4-15) (adjsn xy-4-15 xy-4-16) (adjsn xy-4-16 xy-4-17) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-11 xy-5-12) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-9 xy-6-10) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-12 xy-6-13) (adjsn xy-6-13 xy-6-14) (adjsn xy-6-14 xy-6-15) (adjsn xy-6-15 xy-6-16) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-10 xy-7-11) (adjsn xy-7-11 xy-7-12) (adjsn xy-7-14 xy-7-15) (adjsn xy-7-15 xy-7-16) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-6 xy-8-7) (adjsn xy-8-7 xy-8-8) (adjsn xy-8-8 xy-8-9) (adjsn xy-8-9 xy-8-10) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-12 xy-9-13) (adjsn xy-9-13 xy-9-14) (adjsn xy-9-14 xy-9-15) (adjsn xy-9-15 xy-9-16) (adjsn xy-10-10 xy-10-11) (adjsn xy-11-7 xy-11-8) (adjsn xy-11-10 xy-11-11) (adjsn xy-11-11 xy-11-12) (adjsn xy-11-12 xy-11-13) (adjsn xy-11-13 xy-11-14) (adjsn xy-11-14 xy-11-15) (adjsn xy-11-15 xy-11-16) (adjsn xy-12-8 xy-12-9) (adjsn xy-12-9 xy-12-10) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-12-13 xy-12-14) (adjsn xy-12-14 xy-12-15) (adjsn xy-12-15 xy-12-16) (adjsn xy-13-7 xy-13-8) (adjsn xy-13-8 xy-13-9) (adjsn xy-13-11 xy-13-12) (adjsn xy-13-12 xy-13-13) (adjsn xy-13-15 xy-13-16) (adjsn xy-14-15 xy-14-16) (adjsn xy-15-7 xy-15-8) (adjsn xy-15-8 xy-15-9) (adjsn xy-15-9 xy-15-10) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-15-12 xy-15-13) (adjsn xy-15-13 xy-15-14) (adjsn xy-15-14 xy-15-15) (adjsn xy-15-15 xy-15-16) (adjsn xy-16-14 xy-16-15)

        (crate_at xy-11-15) (crate_at xy-12-15) (crate_at xy-14-15) (crate_at xy-6-14) (crate_at xy-9-14) (crate_at xy-12-13) (crate_at xy-8-12) (crate_at xy-11-12) (crate_at xy-10-11) (crate_at xy-7-10) (crate_at xy-9-10) (crate_at xy-14-9) (crate_at xy-12-8) (crate_at xy-13-8) (crate_at xy-7-7) (crate_at xy-8-7)
        (sokoban_at xy-16-14)
    )
    (:goal (and (crate_at xy-2-6) (crate_at xy-3-6) (crate_at xy-4-6) (crate_at xy-5-6) (crate_at xy-2-5) (crate_at xy-4-5) (crate_at xy-5-5) (crate_at xy-6-5) (crate_at xy-2-4) (crate_at xy-3-4) (crate_at xy-4-4) (crate_at xy-5-4) (crate_at xy-2-3) (crate_at xy-3-3) (crate_at xy-4-3) (crate_at xy-5-3)))
)

