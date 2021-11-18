(define (problem sokoban2-20)
    (:domain sokoban)
    (:objects
        xy-11-15 xy-10-14 xy-15-13 xy-5-12 xy-8-12 xy-5-11 xy-15-11 xy-15-9 xy-10-8 xy-4-7 xy-8-7 xy-11-7 xy-15-7 xy-6-6 xy-10-6 xy-12-6 xy-6-5 xy-15-5 xy-9-4 xy-10-4 xy-17-13 xy-18-13 xy-18-12 xy-17-11 xy-18-11 xy-18-10 xy-17-9 xy-18-9 xy-18-8 xy-15-7 xy-17-7 xy-18-7 xy-18-6 xy-15-5 xy-17-5 xy-18-5 xy-15-4 xy-16-4 xy-17-4 xy-18-4 xy-1-17 xy-2-17 xy-3-17 xy-4-17 xy-6-16 xy-7-16 xy-8-16 xy-9-16 xy-10-16 xy-11-16 xy-12-16 xy-13-16 xy-2-15 xy-3-15 xy-4-15 xy-5-15 xy-6-15 xy-8-15 xy-9-15 xy-10-15 xy-12-15 xy-13-15 xy-16-15 xy-2-14 xy-15-14 xy-16-14 xy-2-13 xy-4-13 xy-5-13 xy-6-13 xy-7-13 xy-10-13 xy-12-13 xy-13-13 xy-16-13 xy-2-12 xy-4-12 xy-6-12 xy-7-12 xy-9-12 xy-10-12 xy-12-12 xy-13-12 xy-15-12 xy-16-12 xy-2-11 xy-4-11 xy-6-11 xy-7-11 xy-9-11 xy-10-11 xy-11-11 xy-12-11 xy-13-11 xy-16-11 xy-2-10 xy-4-10 xy-5-10 xy-9-10 xy-12-10 xy-13-10 xy-14-10 xy-15-10 xy-16-10 xy-2-9 xy-6-9 xy-7-9 xy-9-9 xy-10-9 xy-12-9 xy-13-9 xy-16-9 xy-2-8 xy-4-8 xy-5-8 xy-6-8 xy-7-8 xy-9-8 xy-15-8 xy-16-8 xy-2-7 xy-5-7 xy-6-7 xy-7-7 xy-9-7 xy-10-7 xy-12-7 xy-13-7 xy-16-7 xy-2-6 xy-3-6 xy-4-6 xy-5-6 xy-7-6 xy-9-6 xy-11-6 xy-13-6 xy-15-6 xy-16-6 xy-5-5 xy-10-5 xy-11-5 xy-12-5 xy-13-5 xy-16-5 xy-1-4 xy-2-4 xy-3-4 xy-5-4 xy-6-4 xy-7-4 xy-8-4 xy-11-4 xy-1-3 xy-2-3 xy-3-3 xy-5-3 xy-6-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-13-3 xy-1-2 xy-2-2 xy-3-2 xy-15-15
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-4 xy-2-4) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-15 xy-3-15) (adjwe xy-3-6 xy-4-6) (adjwe xy-3-15 xy-4-15) (adjwe xy-4-6 xy-5-6) (adjwe xy-4-7 xy-5-7) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-11 xy-5-11) (adjwe xy-4-12 xy-5-12) (adjwe xy-4-13 xy-5-13) (adjwe xy-4-15 xy-5-15) (adjwe xy-5-3 xy-6-3) (adjwe xy-5-4 xy-6-4) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-7 xy-6-7) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-12 xy-6-12) (adjwe xy-5-13 xy-6-13) (adjwe xy-5-15 xy-6-15) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-9 xy-7-9) (adjwe xy-6-11 xy-7-11) (adjwe xy-6-12 xy-7-12) (adjwe xy-6-13 xy-7-13) (adjwe xy-6-16 xy-7-16) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-12 xy-8-12) (adjwe xy-7-16 xy-8-16) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-4 xy-9-4) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-15 xy-9-15) (adjwe xy-8-16 xy-9-16) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-4 xy-10-4) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-8 xy-10-8) (adjwe xy-9-9 xy-10-9) (adjwe xy-9-11 xy-10-11) (adjwe xy-9-12 xy-10-12) (adjwe xy-9-15 xy-10-15) (adjwe xy-9-16 xy-10-16) (adjwe xy-10-4 xy-11-4) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-6 xy-11-6) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-11 xy-11-11) (adjwe xy-10-15 xy-11-15) (adjwe xy-10-16 xy-11-16) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-6 xy-12-6) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-11 xy-12-11) (adjwe xy-11-15 xy-12-15) (adjwe xy-11-16 xy-12-16) (adjwe xy-12-5 xy-13-5) (adjwe xy-12-6 xy-13-6) (adjwe xy-12-7 xy-13-7) (adjwe xy-12-9 xy-13-9) (adjwe xy-12-10 xy-13-10) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-12 xy-13-12) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-15 xy-13-15) (adjwe xy-12-16 xy-13-16) (adjwe xy-13-10 xy-14-10) (adjwe xy-14-10 xy-15-10) (adjwe xy-15-4 xy-16-4) (adjwe xy-15-5 xy-16-5) (adjwe xy-15-6 xy-16-6) (adjwe xy-15-7 xy-16-7) (adjwe xy-15-8 xy-16-8) (adjwe xy-15-9 xy-16-9) (adjwe xy-15-10 xy-16-10) (adjwe xy-15-11 xy-16-11) (adjwe xy-15-12 xy-16-12) (adjwe xy-15-13 xy-16-13) (adjwe xy-15-14 xy-16-14) (adjwe xy-15-15 xy-16-15) (adjwe xy-16-4 xy-17-4) (adjwe xy-16-5 xy-17-5) (adjwe xy-16-7 xy-17-7) (adjwe xy-16-9 xy-17-9) (adjwe xy-16-11 xy-17-11) (adjwe xy-16-13 xy-17-13) (adjwe xy-17-4 xy-18-4) (adjwe xy-17-5 xy-18-5) (adjwe xy-17-7 xy-18-7) (adjwe xy-17-9 xy-18-9) (adjwe xy-17-11 xy-18-11) (adjwe xy-17-13 xy-18-13)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-6 xy-2-7) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-9 xy-2-10) (adjsn xy-2-10 xy-2-11) (adjsn xy-2-11 xy-2-12) (adjsn xy-2-12 xy-2-13) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-3 xy-3-4) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-12 xy-4-13) (adjsn xy-5-3 xy-5-4) (adjsn xy-5-4 xy-5-5) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-6 xy-5-7) (adjsn xy-5-7 xy-5-8) (adjsn xy-5-10 xy-5-11) (adjsn xy-5-11 xy-5-12) (adjsn xy-5-12 xy-5-13) (adjsn xy-6-3 xy-6-4) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-12 xy-6-13) (adjsn xy-6-15 xy-6-16) (adjsn xy-7-3 xy-7-4) (adjsn xy-7-6 xy-7-7) (adjsn xy-7-7 xy-7-8) (adjsn xy-7-8 xy-7-9) (adjsn xy-7-11 xy-7-12) (adjsn xy-7-12 xy-7-13) (adjsn xy-8-3 xy-8-4) (adjsn xy-8-15 xy-8-16) (adjsn xy-9-3 xy-9-4) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-15 xy-9-16) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-6 xy-10-7) (adjsn xy-10-7 xy-10-8) (adjsn xy-10-8 xy-10-9) (adjsn xy-10-11 xy-10-12) (adjsn xy-10-12 xy-10-13) (adjsn xy-10-13 xy-10-14) (adjsn xy-10-14 xy-10-15) (adjsn xy-10-15 xy-10-16) (adjsn xy-11-4 xy-11-5) (adjsn xy-11-5 xy-11-6) (adjsn xy-11-6 xy-11-7) (adjsn xy-11-15 xy-11-16) (adjsn xy-12-5 xy-12-6) (adjsn xy-12-6 xy-12-7) (adjsn xy-12-9 xy-12-10) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-12-15 xy-12-16) (adjsn xy-13-5 xy-13-6) (adjsn xy-13-6 xy-13-7) (adjsn xy-13-9 xy-13-10) (adjsn xy-13-10 xy-13-11) (adjsn xy-13-11 xy-13-12) (adjsn xy-13-12 xy-13-13) (adjsn xy-13-15 xy-13-16) (adjsn xy-15-4 xy-15-5) (adjsn xy-15-5 xy-15-6) (adjsn xy-15-6 xy-15-7) (adjsn xy-15-7 xy-15-8) (adjsn xy-15-8 xy-15-9) (adjsn xy-15-9 xy-15-10) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-15-12 xy-15-13) (adjsn xy-15-13 xy-15-14) (adjsn xy-15-14 xy-15-15) (adjsn xy-16-4 xy-16-5) (adjsn xy-16-5 xy-16-6) (adjsn xy-16-6 xy-16-7) (adjsn xy-16-7 xy-16-8) (adjsn xy-16-8 xy-16-9) (adjsn xy-16-9 xy-16-10) (adjsn xy-16-10 xy-16-11) (adjsn xy-16-11 xy-16-12) (adjsn xy-16-12 xy-16-13) (adjsn xy-16-13 xy-16-14) (adjsn xy-16-14 xy-16-15) (adjsn xy-17-4 xy-17-5) (adjsn xy-18-4 xy-18-5) (adjsn xy-18-5 xy-18-6) (adjsn xy-18-6 xy-18-7) (adjsn xy-18-7 xy-18-8) (adjsn xy-18-8 xy-18-9) (adjsn xy-18-9 xy-18-10) (adjsn xy-18-10 xy-18-11) (adjsn xy-18-11 xy-18-12) (adjsn xy-18-12 xy-18-13)

        (crate_at xy-11-15) (crate_at xy-10-14) (crate_at xy-15-13) (crate_at xy-5-12) (crate_at xy-8-12) (crate_at xy-5-11) (crate_at xy-15-11) (crate_at xy-15-9) (crate_at xy-10-8) (crate_at xy-4-7) (crate_at xy-8-7) (crate_at xy-11-7) (crate_at xy-15-7) (crate_at xy-6-6) (crate_at xy-10-6) (crate_at xy-12-6) (crate_at xy-6-5) (crate_at xy-15-5) (crate_at xy-9-4) (crate_at xy-10-4)
        (sokoban_at xy-15-15)
    )
    (:goal (and (crate_at xy-17-13) (crate_at xy-18-13) (crate_at xy-18-12) (crate_at xy-17-11) (crate_at xy-18-11) (crate_at xy-18-10) (crate_at xy-17-9) (crate_at xy-18-9) (crate_at xy-18-8) (crate_at xy-15-7) (crate_at xy-17-7) (crate_at xy-18-7) (crate_at xy-18-6) (crate_at xy-15-5) (crate_at xy-17-5) (crate_at xy-18-5) (crate_at xy-15-4) (crate_at xy-16-4) (crate_at xy-17-4) (crate_at xy-18-4)))
)


