(define (problem sokoban2-88X)
    (:domain sokoban)
    (:objects
        xy-15-14 xy-5-13 xy-6-13 xy-12-13 xy-14-13 xy-8-12 xy-10-12 xy-13-12 xy-8-11 xy-13-11 xy-7-10 xy-11-10 xy-6-9 xy-10-9 xy-15-9 xy-9-8 xy-11-8 xy-8-7 xy-10-7 xy-12-6 xy-15-6 xy-7-4 xy-8-4 xy-2-16 xy-3-16 xy-4-16 xy-5-16 xy-6-16 xy-7-16 xy-8-16 xy-9-16 xy-2-15 xy-3-15 xy-4-15 xy-2-14 xy-3-14 xy-4-14 xy-2-13 xy-3-13 xy-4-13 xy-4-12 xy-2-11 xy-3-11 xy-4-11 xy-2-10 xy-2-9 xy-9-15 xy-11-15 xy-12-15 xy-6-14 xy-7-14 xy-11-14 xy-12-14 xy-13-14 xy-14-14 xy-16-14 xy-7-13 xy-8-13 xy-9-13 xy-10-13 xy-11-13 xy-13-13 xy-15-13 xy-16-13 xy-2-12 xy-3-12 xy-6-12 xy-7-12 xy-9-12 xy-12-12 xy-14-12 xy-15-12 xy-6-11 xy-10-11 xy-11-11 xy-12-11 xy-14-11 xy-15-11 xy-4-10 xy-6-10 xy-8-10 xy-9-10 xy-10-10 xy-12-10 xy-13-10 xy-14-10 xy-15-10 xy-3-9 xy-4-9 xy-3-8 xy-4-8 xy-6-8 xy-7-8 xy-8-8 xy-10-8 xy-12-8 xy-13-8 xy-14-8 xy-15-8 xy-1-7 xy-3-7 xy-4-7 xy-6-7 xy-7-7 xy-11-7 xy-12-7 xy-14-7 xy-15-7 xy-1-6 xy-3-6 xy-4-6 xy-6-6 xy-11-6 xy-13-6 xy-14-6 xy-1-5 xy-3-5 xy-4-5 xy-6-5 xy-7-5 xy-8-5 xy-9-5 xy-13-5 xy-14-5 xy-15-5 xy-1-4 xy-3-4 xy-4-4 xy-6-4 xy-9-4 xy-11-4 xy-1-3 xy-3-3 xy-4-3 xy-6-3 xy-7-3 xy-8-3 xy-9-3 xy-1-2 xy-9-7
	)
    (:init
        (adjwe xy-2-9 xy-3-9) (adjwe xy-2-11 xy-3-11) (adjwe xy-2-12 xy-3-12) (adjwe xy-2-13 xy-3-13) (adjwe xy-2-14 xy-3-14) (adjwe xy-2-15 xy-3-15) (adjwe xy-2-16 xy-3-16) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-5 xy-4-5) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-7 xy-4-7) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-12 xy-4-12) (adjwe xy-3-13 xy-4-13) (adjwe xy-3-14 xy-4-14) (adjwe xy-3-15 xy-4-15) (adjwe xy-3-16 xy-4-16) (adjwe xy-4-13 xy-5-13) (adjwe xy-4-16 xy-5-16) (adjwe xy-5-13 xy-6-13) (adjwe xy-5-16 xy-6-16) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-10 xy-7-10) (adjwe xy-6-12 xy-7-12) (adjwe xy-6-13 xy-7-13) (adjwe xy-6-14 xy-7-14) (adjwe xy-6-16 xy-7-16) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-10 xy-8-10) (adjwe xy-7-12 xy-8-12) (adjwe xy-7-13 xy-8-13) (adjwe xy-7-16 xy-8-16) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-10 xy-9-10) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-13 xy-9-13) (adjwe xy-8-16 xy-9-16) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-10 xy-10-10) (adjwe xy-9-12 xy-10-12) (adjwe xy-9-13 xy-10-13) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-8 xy-11-8) (adjwe xy-10-10 xy-11-10) (adjwe xy-10-11 xy-11-11) (adjwe xy-10-13 xy-11-13) (adjwe xy-11-6 xy-12-6) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-8 xy-12-8) (adjwe xy-11-10 xy-12-10) (adjwe xy-11-11 xy-12-11) (adjwe xy-11-13 xy-12-13) (adjwe xy-11-14 xy-12-14) (adjwe xy-11-15 xy-12-15) (adjwe xy-12-6 xy-13-6) (adjwe xy-12-8 xy-13-8) (adjwe xy-12-10 xy-13-10) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-12 xy-13-12) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-14 xy-13-14) (adjwe xy-13-5 xy-14-5) (adjwe xy-13-6 xy-14-6) (adjwe xy-13-8 xy-14-8) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-13-12 xy-14-12) (adjwe xy-13-13 xy-14-13) (adjwe xy-13-14 xy-14-14) (adjwe xy-14-5 xy-15-5) (adjwe xy-14-6 xy-15-6) (adjwe xy-14-7 xy-15-7) (adjwe xy-14-8 xy-15-8) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-11 xy-15-11) (adjwe xy-14-12 xy-15-12) (adjwe xy-14-13 xy-15-13) (adjwe xy-14-14 xy-15-14) (adjwe xy-15-13 xy-16-13) (adjwe xy-15-14 xy-16-14)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-1-5 xy-1-6) (adjsn xy-1-6 xy-1-7) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-2-12 xy-2-13) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-2-15 xy-2-16) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-6 xy-3-7) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-11 xy-3-12) (adjsn xy-3-12 xy-3-13) (adjsn xy-3-13 xy-3-14) (adjsn xy-3-14 xy-3-15) (adjsn xy-3-15 xy-3-16) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-4 xy-4-5) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-12 xy-4-13) (adjsn xy-4-13 xy-4-14) (adjsn xy-4-14 xy-4-15) (adjsn xy-4-15 xy-4-16) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-9 xy-6-10) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-12 xy-6-13) (adjsn xy-6-13 xy-6-14) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-12 xy-7-13) (adjsn xy-7-13 xy-7-14) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-7 xy-8-8) (adjsn xy-8-10 xy-8-11) (adjsn xy-8-11 xy-8-12) (adjsn xy-8-12 xy-8-13) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-12 xy-9-13) (adjsn xy-9-15 xy-9-16) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-8 xy-10-9) (adjsn xy-10-9 xy-10-10) (adjsn xy-10-10 xy-10-11) (adjsn xy-10-11 xy-10-12) (adjsn xy-10-12 xy-10-13) (adjsn xy-11-6 xy-11-7) (adjsn xy-11-7 xy-11-8) (adjsn xy-11-10 xy-11-11) (adjsn xy-11-13 xy-11-14) (adjsn xy-11-14 xy-11-15) (adjsn xy-12-6 xy-12-7) (adjsn xy-12-7 xy-12-8) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-12-13 xy-12-14) (adjsn xy-12-14 xy-12-15) (adjsn xy-13-5 xy-13-6) (adjsn xy-13-10 xy-13-11) (adjsn xy-13-11 xy-13-12) (adjsn xy-13-12 xy-13-13) (adjsn xy-13-13 xy-13-14) (adjsn xy-14-5 xy-14-6) (adjsn xy-14-6 xy-14-7) (adjsn xy-14-7 xy-14-8) (adjsn xy-14-10 xy-14-11) (adjsn xy-14-11 xy-14-12) (adjsn xy-14-12 xy-14-13) (adjsn xy-14-13 xy-14-14) (adjsn xy-15-5 xy-15-6) (adjsn xy-15-6 xy-15-7) (adjsn xy-15-7 xy-15-8) (adjsn xy-15-8 xy-15-9) (adjsn xy-15-9 xy-15-10) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-15-12 xy-15-13) (adjsn xy-15-13 xy-15-14) (adjsn xy-16-13 xy-16-14)

        (crate_at xy-15-14) (crate_at xy-5-13) (crate_at xy-6-13) (crate_at xy-12-13) (crate_at xy-14-13) (crate_at xy-8-12) (crate_at xy-10-12) (crate_at xy-13-12) (crate_at xy-8-11) (crate_at xy-13-11) (crate_at xy-7-10) (crate_at xy-11-10) (crate_at xy-6-9) (crate_at xy-10-9) (crate_at xy-15-9) (crate_at xy-9-8) (crate_at xy-11-8) (crate_at xy-8-7) (crate_at xy-10-7) (crate_at xy-12-6) (crate_at xy-15-6) (crate_at xy-7-4) (crate_at xy-8-4)
        (sokoban_at xy-9-7)
    )
    (:goal (and (crate_at xy-2-16) (crate_at xy-3-16) (crate_at xy-4-16) (crate_at xy-5-16) (crate_at xy-6-16) (crate_at xy-7-16) (crate_at xy-8-16) (crate_at xy-9-16) (crate_at xy-2-15) (crate_at xy-3-15) (crate_at xy-4-15) (crate_at xy-2-14) (crate_at xy-3-14) (crate_at xy-4-14) (crate_at xy-2-13) (crate_at xy-3-13) (crate_at xy-4-13) (crate_at xy-4-12) (crate_at xy-2-11) (crate_at xy-3-11) (crate_at xy-4-11) (crate_at xy-2-10) (crate_at xy-2-9)))
)


