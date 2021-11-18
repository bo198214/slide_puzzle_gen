(define (problem sokoban2-37)
    (:domain sokoban)
    (:objects
        xy-8-13 xy-13-13 xy-6-12 xy-8-12 xy-6-11 xy-13-10 xy-17-10 xy-6-9 xy-7-9 xy-9-9 xy-11-9 xy-14-9 xy-6-8 xy-11-8 xy-13-8 xy-17-8 xy-7-6 xy-9-6 xy-9-5 xy-12-5 xy-2-15 xy-3-15 xy-4-15 xy-5-15 xy-6-15 xy-7-15 xy-2-14 xy-3-14 xy-4-14 xy-5-14 xy-6-14 xy-7-14 xy-2-13 xy-3-13 xy-2-12 xy-3-12 xy-4-12 xy-2-11 xy-3-11 xy-4-11 xy-8-15 xy-9-15 xy-10-15 xy-8-14 xy-9-14 xy-10-14 xy-12-14 xy-13-14 xy-16-14 xy-17-14 xy-18-14 xy-7-13 xy-9-13 xy-10-13 xy-11-13 xy-12-13 xy-14-13 xy-15-13 xy-16-13 xy-17-13 xy-18-13 xy-5-12 xy-7-12 xy-9-12 xy-11-12 xy-12-12 xy-16-12 xy-17-12 xy-18-12 xy-12-11 xy-13-11 xy-14-11 xy-15-11 xy-17-11 xy-18-11 xy-4-10 xy-5-10 xy-6-10 xy-7-10 xy-9-10 xy-10-10 xy-11-10 xy-14-10 xy-15-10 xy-18-10 xy-1-9 xy-2-9 xy-4-9 xy-5-9 xy-8-9 xy-10-9 xy-12-9 xy-13-9 xy-17-9 xy-18-9 xy-1-8 xy-2-8 xy-4-8 xy-5-8 xy-7-8 xy-8-8 xy-9-8 xy-14-8 xy-18-8 xy-1-7 xy-2-7 xy-6-7 xy-9-7 xy-11-7 xy-12-7 xy-13-7 xy-14-7 xy-17-7 xy-18-7 xy-1-6 xy-2-6 xy-3-6 xy-5-6 xy-6-6 xy-8-6 xy-10-6 xy-13-6 xy-1-5 xy-2-5 xy-3-5 xy-5-5 xy-6-5 xy-7-5 xy-8-5 xy-10-5 xy-11-5 xy-13-5 xy-14-5 xy-1-4 xy-2-4 xy-3-4 xy-6-4 xy-7-4 xy-8-4 xy-10-4 xy-12-4 xy-13-4 xy-14-4 xy-1-3 xy-2-3 xy-3-3 xy-4-3 xy-1-2 xy-2-2 xy-3-2 xy-4-2 xy-5-2 xy-6-2 xy-7-2 xy-8-2 xy-10-3
	)
    (:init
        (adjwe xy-1-2 xy-2-2) (adjwe xy-1-3 xy-2-3) (adjwe xy-1-4 xy-2-4) (adjwe xy-1-5 xy-2-5) (adjwe xy-1-6 xy-2-6) (adjwe xy-1-7 xy-2-7) (adjwe xy-1-8 xy-2-8) (adjwe xy-1-9 xy-2-9) (adjwe xy-2-2 xy-3-2) (adjwe xy-2-3 xy-3-3) (adjwe xy-2-4 xy-3-4) (adjwe xy-2-5 xy-3-5) (adjwe xy-2-6 xy-3-6) (adjwe xy-2-11 xy-3-11) (adjwe xy-2-12 xy-3-12) (adjwe xy-2-13 xy-3-13) (adjwe xy-2-14 xy-3-14) (adjwe xy-2-15 xy-3-15) (adjwe xy-3-2 xy-4-2) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-12 xy-4-12) (adjwe xy-3-14 xy-4-14) (adjwe xy-3-15 xy-4-15) (adjwe xy-4-2 xy-5-2) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-9 xy-5-9) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-12 xy-5-12) (adjwe xy-4-14 xy-5-14) (adjwe xy-4-15 xy-5-15) (adjwe xy-5-2 xy-6-2) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-6 xy-6-6) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-9 xy-6-9) (adjwe xy-5-10 xy-6-10) (adjwe xy-5-12 xy-6-12) (adjwe xy-5-14 xy-6-14) (adjwe xy-5-15 xy-6-15) (adjwe xy-6-2 xy-7-2) (adjwe xy-6-4 xy-7-4) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-6 xy-7-6) (adjwe xy-6-8 xy-7-8) (adjwe xy-6-9 xy-7-9) (adjwe xy-6-10 xy-7-10) (adjwe xy-6-12 xy-7-12) (adjwe xy-6-14 xy-7-14) (adjwe xy-6-15 xy-7-15) (adjwe xy-7-2 xy-8-2) (adjwe xy-7-4 xy-8-4) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-6 xy-8-6) (adjwe xy-7-8 xy-8-8) (adjwe xy-7-9 xy-8-9) (adjwe xy-7-12 xy-8-12) (adjwe xy-7-13 xy-8-13) (adjwe xy-7-14 xy-8-14) (adjwe xy-7-15 xy-8-15) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-6 xy-9-6) (adjwe xy-8-8 xy-9-8) (adjwe xy-8-9 xy-9-9) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-13 xy-9-13) (adjwe xy-8-14 xy-9-14) (adjwe xy-8-15 xy-9-15) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-6 xy-10-6) (adjwe xy-9-9 xy-10-9) (adjwe xy-9-10 xy-10-10) (adjwe xy-9-13 xy-10-13) (adjwe xy-9-14 xy-10-14) (adjwe xy-9-15 xy-10-15) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-9 xy-11-9) (adjwe xy-10-10 xy-11-10) (adjwe xy-10-13 xy-11-13) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-9 xy-12-9) (adjwe xy-11-12 xy-12-12) (adjwe xy-11-13 xy-12-13) (adjwe xy-12-4 xy-13-4) (adjwe xy-12-5 xy-13-5) (adjwe xy-12-7 xy-13-7) (adjwe xy-12-9 xy-13-9) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-13 xy-13-13) (adjwe xy-12-14 xy-13-14) (adjwe xy-13-4 xy-14-4) (adjwe xy-13-5 xy-14-5) (adjwe xy-13-7 xy-14-7) (adjwe xy-13-8 xy-14-8) (adjwe xy-13-9 xy-14-9) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-13-13 xy-14-13) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-11 xy-15-11) (adjwe xy-14-13 xy-15-13) (adjwe xy-15-13 xy-16-13) (adjwe xy-16-12 xy-17-12) (adjwe xy-16-13 xy-17-13) (adjwe xy-16-14 xy-17-14) (adjwe xy-17-7 xy-18-7) (adjwe xy-17-8 xy-18-8) (adjwe xy-17-9 xy-18-9) (adjwe xy-17-10 xy-18-10) (adjwe xy-17-11 xy-18-11) (adjwe xy-17-12 xy-18-12) (adjwe xy-17-13 xy-18-13) (adjwe xy-17-14 xy-18-14)
        (adjsn xy-1-2 xy-1-3) (adjsn xy-1-3 xy-1-4) (adjsn xy-1-4 xy-1-5) (adjsn xy-1-5 xy-1-6) (adjsn xy-1-6 xy-1-7) (adjsn xy-1-7 xy-1-8) (adjsn xy-1-8 xy-1-9) (adjsn xy-2-2 xy-2-3) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-4 xy-2-5) (adjsn xy-2-5 xy-2-6) (adjsn xy-2-6 xy-2-7) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-8 xy-2-9) (adjsn xy-2-11 xy-2-12) (adjsn xy-2-12 xy-2-13) (adjsn xy-2-13 xy-2-14) (adjsn xy-2-14 xy-2-15) (adjsn xy-3-2 xy-3-3) (adjsn xy-3-3 xy-3-4) (adjsn xy-3-4 xy-3-5) (adjsn xy-3-5 xy-3-6) (adjsn xy-3-11 xy-3-12) (adjsn xy-3-12 xy-3-13) (adjsn xy-3-13 xy-3-14) (adjsn xy-3-14 xy-3-15) (adjsn xy-4-2 xy-4-3) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-11 xy-4-12) (adjsn xy-4-14 xy-4-15) (adjsn xy-5-5 xy-5-6) (adjsn xy-5-8 xy-5-9) (adjsn xy-5-9 xy-5-10) (adjsn xy-5-14 xy-5-15) (adjsn xy-6-4 xy-6-5) (adjsn xy-6-5 xy-6-6) (adjsn xy-6-6 xy-6-7) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-8 xy-6-9) (adjsn xy-6-9 xy-6-10) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-11 xy-6-12) (adjsn xy-6-14 xy-6-15) (adjsn xy-7-4 xy-7-5) (adjsn xy-7-5 xy-7-6) (adjsn xy-7-8 xy-7-9) (adjsn xy-7-9 xy-7-10) (adjsn xy-7-12 xy-7-13) (adjsn xy-7-13 xy-7-14) (adjsn xy-7-14 xy-7-15) (adjsn xy-8-4 xy-8-5) (adjsn xy-8-5 xy-8-6) (adjsn xy-8-8 xy-8-9) (adjsn xy-8-12 xy-8-13) (adjsn xy-8-13 xy-8-14) (adjsn xy-8-14 xy-8-15) (adjsn xy-9-5 xy-9-6) (adjsn xy-9-6 xy-9-7) (adjsn xy-9-7 xy-9-8) (adjsn xy-9-8 xy-9-9) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-12 xy-9-13) (adjsn xy-9-13 xy-9-14) (adjsn xy-9-14 xy-9-15) (adjsn xy-10-3 xy-10-4) (adjsn xy-10-4 xy-10-5) (adjsn xy-10-5 xy-10-6) (adjsn xy-10-9 xy-10-10) (adjsn xy-10-13 xy-10-14) (adjsn xy-10-14 xy-10-15) (adjsn xy-11-7 xy-11-8) (adjsn xy-11-8 xy-11-9) (adjsn xy-11-9 xy-11-10) (adjsn xy-11-12 xy-11-13) (adjsn xy-12-4 xy-12-5) (adjsn xy-12-11 xy-12-12) (adjsn xy-12-12 xy-12-13) (adjsn xy-12-13 xy-12-14) (adjsn xy-13-4 xy-13-5) (adjsn xy-13-5 xy-13-6) (adjsn xy-13-6 xy-13-7) (adjsn xy-13-7 xy-13-8) (adjsn xy-13-8 xy-13-9) (adjsn xy-13-9 xy-13-10) (adjsn xy-13-10 xy-13-11) (adjsn xy-13-13 xy-13-14) (adjsn xy-14-4 xy-14-5) (adjsn xy-14-7 xy-14-8) (adjsn xy-14-8 xy-14-9) (adjsn xy-14-9 xy-14-10) (adjsn xy-14-10 xy-14-11) (adjsn xy-15-10 xy-15-11) (adjsn xy-16-12 xy-16-13) (adjsn xy-16-13 xy-16-14) (adjsn xy-17-7 xy-17-8) (adjsn xy-17-8 xy-17-9) (adjsn xy-17-9 xy-17-10) (adjsn xy-17-10 xy-17-11) (adjsn xy-17-11 xy-17-12) (adjsn xy-17-12 xy-17-13) (adjsn xy-17-13 xy-17-14) (adjsn xy-18-7 xy-18-8) (adjsn xy-18-8 xy-18-9) (adjsn xy-18-9 xy-18-10) (adjsn xy-18-10 xy-18-11) (adjsn xy-18-11 xy-18-12) (adjsn xy-18-12 xy-18-13) (adjsn xy-18-13 xy-18-14)

        (crate_at xy-8-13) (crate_at xy-13-13) (crate_at xy-6-12) (crate_at xy-8-12) (crate_at xy-6-11) (crate_at xy-13-10) (crate_at xy-17-10) (crate_at xy-6-9) (crate_at xy-7-9) (crate_at xy-9-9) (crate_at xy-11-9) (crate_at xy-14-9) (crate_at xy-6-8) (crate_at xy-11-8) (crate_at xy-13-8) (crate_at xy-17-8) (crate_at xy-7-6) (crate_at xy-9-6) (crate_at xy-9-5) (crate_at xy-12-5)
        (sokoban_at xy-10-3)
    )
    (:goal (and (crate_at xy-2-15) (crate_at xy-3-15) (crate_at xy-4-15) (crate_at xy-5-15) (crate_at xy-6-15) (crate_at xy-7-15) (crate_at xy-2-14) (crate_at xy-3-14) (crate_at xy-4-14) (crate_at xy-5-14) (crate_at xy-6-14) (crate_at xy-7-14) (crate_at xy-2-13) (crate_at xy-3-13) (crate_at xy-2-12) (crate_at xy-3-12) (crate_at xy-4-12) (crate_at xy-2-11) (crate_at xy-3-11) (crate_at xy-4-11)))
)


