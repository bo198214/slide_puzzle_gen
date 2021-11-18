(define (problem sokoban2-36)
    (:domain sokoban)
    (:objects
        xy-11-15 xy-13-15 xy-15-15 xy-3-14 xy-5-13 xy-7-13 xy-13-13 xy-16-13 xy-5-12 xy-16-11 xy-17-11 xy-4-10 xy-4-9 xy-10-9 xy-15-9 xy-4-8 xy-4-7 xy-5-7 xy-7-7 xy-13-7 xy-14-7 xy-9-5 xy-10-5 xy-12-5 xy-6-4 xy-7-4 xy-8-4 xy-9-4 xy-10-4 xy-11-4 xy-12-4 xy-13-4 xy-14-4 xy-6-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-11-3 xy-12-3 xy-13-3 xy-14-3 xy-1-17 xy-2-17 xy-3-17 xy-4-17 xy-5-17 xy-6-17 xy-7-17 xy-8-17 xy-9-17 xy-10-17 xy-11-17 xy-12-17 xy-6-16 xy-7-16 xy-14-16 xy-15-16 xy-16-16 xy-2-15 xy-3-15 xy-4-15 xy-9-15 xy-10-15 xy-12-15 xy-14-15 xy-16-15 xy-2-14 xy-4-14 xy-5-14 xy-6-14 xy-9-14 xy-12-14 xy-15-14 xy-16-14 xy-2-13 xy-3-13 xy-4-13 xy-6-13 xy-8-13 xy-9-13 xy-10-13 xy-11-13 xy-12-13 xy-14-13 xy-15-13 xy-17-13 xy-4-12 xy-6-12 xy-7-12 xy-10-12 xy-13-12 xy-14-12 xy-15-12 xy-16-12 xy-17-12 xy-1-11 xy-2-11 xy-4-11 xy-10-11 xy-18-11 xy-1-10 xy-10-10 xy-14-10 xy-15-10 xy-16-10 xy-17-10 xy-18-10 xy-1-9 xy-3-9 xy-5-9 xy-6-9 xy-14-9 xy-16-9 xy-17-9 xy-1-8 xy-3-8 xy-5-8 xy-6-8 xy-8-8 xy-9-8 xy-10-8 xy-14-8 xy-15-8 xy-1-7 xy-3-7 xy-6-7 xy-8-7 xy-10-7 xy-11-7 xy-12-7 xy-15-7 xy-1-6 xy-3-6 xy-4-6 xy-5-6 xy-6-6 xy-7-6 xy-9-6 xy-10-6 xy-11-6 xy-14-6 xy-15-6 xy-1-5 xy-11-5 xy-1-4 xy-2-4 xy-3-4 xy-4-4 xy-1-3 xy-2-3 xy-3-3 xy-4-3 xy-1-2 xy-2-2 xy-3-2 xy-4-2 xy-11-10
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-4 xy-2-4) (adjwe xy-1-11 xy-2-11) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-13 xy-3-13) (adjwe xy-2-14 xy-3-14) (adjwe xy-2-15 xy-3-15) (adjwe xy-3-2 xy-4-2) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-4 xy-4-4) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-7 xy-4-7) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-9 xy-4-9) (adjwe xy-3-13 xy-4-13) (adjwe xy-3-14 xy-4-14) (adjwe xy-3-15 xy-4-15) (adjwe xy-4-6 xy-5-6) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-12 xy-5-12) (adjwe xy-4-13 xy-5-13) (adjwe xy-4-14 xy-5-14) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-7 xy-6-7) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-9 xy-6-9) (adjwe xy-5-12 xy-6-12) (adjwe xy-5-13 xy-6-13) (adjwe xy-5-14 xy-6-14) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-12 xy-7-12) (adjwe xy-6-13 xy-7-13) (adjwe xy-6-16 xy-7-16) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-13 xy-8-13) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-13 xy-9-13) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-13 xy-10-13) (adjwe xy-9-15 xy-10-15) (adjwe xy-10-3 xy-11-3) (adjwe xy-10-4 xy-11-4) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-6 xy-11-6) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-10 xy-11-10) (adjwe xy-10-13 xy-11-13) (adjwe xy-10-15 xy-11-15) (adjwe xy-11-3 xy-12-3) (adjwe xy-11-4 xy-12-4) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-13 xy-12-13) (adjwe xy-11-15 xy-12-15) (adjwe xy-12-3 xy-13-3) (adjwe xy-12-4 xy-13-4) (adjwe xy-12-7 xy-13-7) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-15 xy-13-15) (adjwe xy-13-3 xy-14-3) (adjwe xy-13-4 xy-14-4) (adjwe xy-13-7 xy-14-7) (adjwe xy-13-12 xy-14-12) (adjwe xy-13-13 xy-14-13) (adjwe xy-13-15 xy-14-15) (adjwe xy-14-6 xy-15-6) (adjwe xy-14-7 xy-15-7) (adjwe xy-14-8 xy-15-8) (adjwe xy-14-9 xy-15-9) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-12 xy-15-12) (adjwe xy-14-13 xy-15-13) (adjwe xy-14-15 xy-15-15) (adjwe xy-14-16 xy-15-16) (adjwe xy-15-9 xy-16-9) (adjwe xy-15-10 xy-16-10) (adjwe xy-15-12 xy-16-12) (adjwe xy-15-13 xy-16-13) (adjwe xy-15-14 xy-16-14) (adjwe xy-15-15 xy-16-15) (adjwe xy-15-16 xy-16-16) (adjwe xy-16-9 xy-17-9) (adjwe xy-16-10 xy-17-10) (adjwe xy-16-11 xy-17-11) (adjwe xy-16-12 xy-17-12) (adjwe xy-16-13 xy-17-13) (adjwe xy-17-10 xy-18-10) (adjwe xy-17-11 xy-18-11)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-1-5 xy-1-6) (adjsn xy-1-6 xy-1-7) (adjsn xy-1-7 xy-1-8) (adjsn xy-1-8 xy-1-9) (adjsn xy-1-9 xy-1-10) (adjsn xy-1-10 xy-1-11) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-6 xy-3-7) (adjsn xy-3-7 xy-3-8) (adjsn xy-3-8 xy-3-9) (adjsn xy-3-13 xy-3-14) (adjsn xy-3-14 xy-3-15) (adjsn xy-4-2 xy-4-3) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-12 xy-4-13) (adjsn xy-4-13 xy-4-14) (adjsn xy-4-14 xy-4-15) (adjsn xy-5-6 xy-5-7) (adjsn xy-5-7 xy-5-8) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-12 xy-5-13) (adjsn xy-5-13 xy-5-14) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-12 xy-6-13) (adjsn xy-6-13 xy-6-14) (adjsn xy-6-16 xy-6-17) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-12 xy-7-13) (adjsn xy-7-16 xy-7-17) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-7 xy-8-8) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-4 xy-9-5) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-13 xy-9-14) (adjsn xy-9-14 xy-9-15) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-6 xy-10-7) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-8 xy-10-9) (adjsn xy-10-9 xy-10-10) (adjsn xy-10-10 xy-10-11) (adjsn xy-10-11 xy-10-12) (adjsn xy-10-12 xy-10-13) (adjsn xy-11-3 xy-11-4) (adjsn xy-11-4 xy-11-5) (adjsn xy-11-5 xy-11-6) (adjsn xy-11-6 xy-11-7) (adjsn xy-12-3 xy-12-4) (adjsn xy-12-4 xy-12-5) (adjsn xy-12-13 xy-12-14) (adjsn xy-12-14 xy-12-15) (adjsn xy-13-3 xy-13-4) (adjsn xy-13-12 xy-13-13) (adjsn xy-14-3 xy-14-4) (adjsn xy-14-6 xy-14-7) (adjsn xy-14-7 xy-14-8) (adjsn xy-14-8 xy-14-9) (adjsn xy-14-9 xy-14-10) (adjsn xy-14-12 xy-14-13) (adjsn xy-14-15 xy-14-16) (adjsn xy-15-6 xy-15-7) (adjsn xy-15-7 xy-15-8) (adjsn xy-15-8 xy-15-9) (adjsn xy-15-9 xy-15-10) (adjsn xy-15-12 xy-15-13) (adjsn xy-15-13 xy-15-14) (adjsn xy-15-14 xy-15-15) (adjsn xy-15-15 xy-15-16) (adjsn xy-16-9 xy-16-10) (adjsn xy-16-10 xy-16-11) (adjsn xy-16-11 xy-16-12) (adjsn xy-16-12 xy-16-13) (adjsn xy-16-13 xy-16-14) (adjsn xy-16-14 xy-16-15) (adjsn xy-16-15 xy-16-16) (adjsn xy-17-9 xy-17-10) (adjsn xy-17-10 xy-17-11) (adjsn xy-17-11 xy-17-12) (adjsn xy-17-12 xy-17-13) (adjsn xy-18-10 xy-18-11)

        (crate_at xy-11-15) (crate_at xy-13-15) (crate_at xy-15-15) (crate_at xy-3-14) (crate_at xy-5-13) (crate_at xy-7-13) (crate_at xy-13-13) (crate_at xy-16-13) (crate_at xy-5-12) (crate_at xy-16-11) (crate_at xy-17-11) (crate_at xy-4-10) (crate_at xy-4-9) (crate_at xy-10-9) (crate_at xy-15-9) (crate_at xy-4-8) (crate_at xy-4-7) (crate_at xy-5-7) (crate_at xy-7-7) (crate_at xy-13-7) (crate_at xy-14-7)
        (sokoban_at xy-11-10)
    )
    (:goal (and (crate_at xy-9-5) (crate_at xy-10-5) (crate_at xy-12-5) (crate_at xy-6-4) (crate_at xy-7-4) (crate_at xy-8-4) (crate_at xy-9-4) (crate_at xy-10-4) (crate_at xy-11-4) (crate_at xy-12-4) (crate_at xy-13-4) (crate_at xy-14-4) (crate_at xy-6-3) (crate_at xy-7-3) (crate_at xy-8-3) (crate_at xy-9-3) (crate_at xy-10-3) (crate_at xy-11-3) (crate_at xy-12-3) (crate_at xy-13-3) (crate_at xy-14-3)))
)


