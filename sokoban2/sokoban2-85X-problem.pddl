(define (problem sokoban2-85X)
    (:domain sokoban)
    (:objects
        xy-3-15 xy-6-15 xy-14-11 xy-13-10 xy-14-10 xy-15-10 xy-14-9 xy-16-9 xy-13-8 xy-7-7 xy-14-7 xy-18-7 xy-18-6 xy-18-5 xy-13-4 xy-3-13 xy-4-13 xy-3-12 xy-3-11 xy-4-11 xy-5-11 xy-6-11 xy-4-10 xy-5-10 xy-6-10 xy-4-9 xy-4-7 xy-4-6 xy-4-5 xy-5-5 xy-2-16 xy-3-16 xy-4-16 xy-5-16 xy-6-16 xy-7-16 xy-9-16 xy-10-16 xy-11-16 xy-2-15 xy-4-15 xy-5-15 xy-7-15 xy-8-15 xy-9-15 xy-11-15 xy-12-15 xy-5-14 xy-6-14 xy-12-14 xy-13-14 xy-14-14 xy-15-14 xy-16-14 xy-17-14 xy-1-13 xy-5-13 xy-6-13 xy-8-13 xy-9-13 xy-10-13 xy-11-13 xy-12-13 xy-17-13 xy-1-12 xy-8-12 xy-9-12 xy-14-12 xy-15-12 xy-16-12 xy-17-12 xy-1-11 xy-7-11 xy-8-11 xy-9-11 xy-10-11 xy-12-11 xy-13-11 xy-15-11 xy-1-10 xy-3-10 xy-8-10 xy-9-10 xy-10-10 xy-12-10 xy-17-10 xy-18-10 xy-9-9 xy-12-9 xy-13-9 xy-17-9 xy-18-9 xy-19-9 xy-2-8 xy-3-8 xy-4-8 xy-5-8 xy-6-8 xy-12-8 xy-14-8 xy-16-8 xy-17-8 xy-18-8 xy-19-8 xy-2-7 xy-6-7 xy-8-7 xy-9-7 xy-10-7 xy-11-7 xy-12-7 xy-13-7 xy-19-7 xy-2-6 xy-13-6 xy-14-6 xy-16-6 xy-17-6 xy-19-6 xy-2-5 xy-6-5 xy-7-5 xy-8-5 xy-9-5 xy-10-5 xy-11-5 xy-12-5 xy-13-5 xy-16-5 xy-17-5 xy-19-5 xy-2-4 xy-4-4 xy-12-4 xy-14-4 xy-16-4 xy-18-4 xy-19-4 xy-2-3 xy-3-3 xy-4-3 xy-6-3 xy-7-3 xy-8-3 xy-9-3 xy-10-3 xy-12-3 xy-13-3 xy-14-3 xy-15-3 xy-16-3 xy-17-3 xy-18-3 xy-6-2 xy-7-2 xy-8-2 xy-9-2 xy-10-2 xy-15-9
	)
    (:init
        (adjwe xy-2-3 xy-3-3) (adjwe xy-2-8 xy-3-8) (adjwe xy-2-15 xy-3-15) (adjwe xy-2-16 xy-3-16) (adjwe xy-3-3 xy-4-3) (adjwe xy-3-8 xy-4-8) (adjwe xy-3-10 xy-4-10) (adjwe xy-3-11 xy-4-11) (adjwe xy-3-13 xy-4-13) (adjwe xy-3-15 xy-4-15) (adjwe xy-3-16 xy-4-16) (adjwe xy-4-5 xy-5-5) (adjwe xy-4-8 xy-5-8) (adjwe xy-4-10 xy-5-10) (adjwe xy-4-11 xy-5-11) (adjwe xy-4-13 xy-5-13) (adjwe xy-4-15 xy-5-15) (adjwe xy-4-16 xy-5-16) (adjwe xy-5-5 xy-6-5) (adjwe xy-5-8 xy-6-8) (adjwe xy-5-10 xy-6-10) (adjwe xy-5-11 xy-6-11) (adjwe xy-5-13 xy-6-13) (adjwe xy-5-14 xy-6-14) (adjwe xy-5-15 xy-6-15) (adjwe xy-5-16 xy-6-16) (adjwe xy-6-2 xy-7-2) (adjwe xy-6-3 xy-7-3) (adjwe xy-6-5 xy-7-5) (adjwe xy-6-7 xy-7-7) (adjwe xy-6-11 xy-7-11) (adjwe xy-6-15 xy-7-15) (adjwe xy-6-16 xy-7-16) (adjwe xy-7-2 xy-8-2) (adjwe xy-7-3 xy-8-3) (adjwe xy-7-5 xy-8-5) (adjwe xy-7-7 xy-8-7) (adjwe xy-7-11 xy-8-11) (adjwe xy-7-15 xy-8-15) (adjwe xy-8-2 xy-9-2) (adjwe xy-8-3 xy-9-3) (adjwe xy-8-5 xy-9-5) (adjwe xy-8-7 xy-9-7) (adjwe xy-8-10 xy-9-10) (adjwe xy-8-11 xy-9-11) (adjwe xy-8-12 xy-9-12) (adjwe xy-8-13 xy-9-13) (adjwe xy-8-15 xy-9-15) (adjwe xy-9-2 xy-10-2) (adjwe xy-9-3 xy-10-3) (adjwe xy-9-5 xy-10-5) (adjwe xy-9-7 xy-10-7) (adjwe xy-9-10 xy-10-10) (adjwe xy-9-11 xy-10-11) (adjwe xy-9-13 xy-10-13) (adjwe xy-9-16 xy-10-16) (adjwe xy-10-5 xy-11-5) (adjwe xy-10-7 xy-11-7) (adjwe xy-10-13 xy-11-13) (adjwe xy-10-16 xy-11-16) (adjwe xy-11-5 xy-12-5) (adjwe xy-11-7 xy-12-7) (adjwe xy-11-13 xy-12-13) (adjwe xy-11-15 xy-12-15) (adjwe xy-12-3 xy-13-3) (adjwe xy-12-4 xy-13-4) (adjwe xy-12-5 xy-13-5) (adjwe xy-12-7 xy-13-7) (adjwe xy-12-8 xy-13-8) (adjwe xy-12-9 xy-13-9) (adjwe xy-12-10 xy-13-10) (adjwe xy-12-11 xy-13-11) (adjwe xy-12-14 xy-13-14) (adjwe xy-13-3 xy-14-3) (adjwe xy-13-4 xy-14-4) (adjwe xy-13-6 xy-14-6) (adjwe xy-13-7 xy-14-7) (adjwe xy-13-8 xy-14-8) (adjwe xy-13-9 xy-14-9) (adjwe xy-13-10 xy-14-10) (adjwe xy-13-11 xy-14-11) (adjwe xy-13-14 xy-14-14) (adjwe xy-14-3 xy-15-3) (adjwe xy-14-9 xy-15-9) (adjwe xy-14-10 xy-15-10) (adjwe xy-14-11 xy-15-11) (adjwe xy-14-12 xy-15-12) (adjwe xy-14-14 xy-15-14) (adjwe xy-15-3 xy-16-3) (adjwe xy-15-9 xy-16-9) (adjwe xy-15-12 xy-16-12) (adjwe xy-15-14 xy-16-14) (adjwe xy-16-3 xy-17-3) (adjwe xy-16-5 xy-17-5) (adjwe xy-16-6 xy-17-6) (adjwe xy-16-8 xy-17-8) (adjwe xy-16-9 xy-17-9) (adjwe xy-16-12 xy-17-12) (adjwe xy-16-14 xy-17-14) (adjwe xy-17-3 xy-18-3) (adjwe xy-17-5 xy-18-5) (adjwe xy-17-6 xy-18-6) (adjwe xy-17-8 xy-18-8) (adjwe xy-17-9 xy-18-9) (adjwe xy-17-10 xy-18-10) (adjwe xy-18-4 xy-19-4) (adjwe xy-18-5 xy-19-5) (adjwe xy-18-6 xy-19-6) (adjwe xy-18-7 xy-19-7) (adjwe xy-18-8 xy-19-8) (adjwe xy-18-9 xy-19-9)
        (adjsn xy-1-10 xy-1-11) (adjsn xy-1-11 xy-1-12) (adjsn xy-1-12 xy-1-13) (adjsn xy-2-3 xy-2-4) (adjsn xy-2-4 xy-2-5) (adjsn xy-2-5 xy-2-6) (adjsn xy-2-6 xy-2-7) (adjsn xy-2-7 xy-2-8) (adjsn xy-2-15 xy-2-16) (adjsn xy-3-10 xy-3-11) (adjsn xy-3-11 xy-3-12) (adjsn xy-3-12 xy-3-13) (adjsn xy-3-15 xy-3-16) (adjsn xy-4-3 xy-4-4) (adjsn xy-4-4 xy-4-5) (adjsn xy-4-5 xy-4-6) (adjsn xy-4-6 xy-4-7) (adjsn xy-4-7 xy-4-8) (adjsn xy-4-8 xy-4-9) (adjsn xy-4-9 xy-4-10) (adjsn xy-4-10 xy-4-11) (adjsn xy-4-15 xy-4-16) (adjsn xy-5-10 xy-5-11) (adjsn xy-5-13 xy-5-14) (adjsn xy-5-14 xy-5-15) (adjsn xy-5-15 xy-5-16) (adjsn xy-6-2 xy-6-3) (adjsn xy-6-7 xy-6-8) (adjsn xy-6-10 xy-6-11) (adjsn xy-6-13 xy-6-14) (adjsn xy-6-14 xy-6-15) (adjsn xy-6-15 xy-6-16) (adjsn xy-7-2 xy-7-3) (adjsn xy-7-15 xy-7-16) (adjsn xy-8-2 xy-8-3) (adjsn xy-8-10 xy-8-11) (adjsn xy-8-11 xy-8-12) (adjsn xy-8-12 xy-8-13) (adjsn xy-9-2 xy-9-3) (adjsn xy-9-9 xy-9-10) (adjsn xy-9-10 xy-9-11) (adjsn xy-9-11 xy-9-12) (adjsn xy-9-12 xy-9-13) (adjsn xy-9-15 xy-9-16) (adjsn xy-10-2 xy-10-3) (adjsn xy-10-10 xy-10-11) (adjsn xy-11-15 xy-11-16) (adjsn xy-12-3 xy-12-4) (adjsn xy-12-4 xy-12-5) (adjsn xy-12-7 xy-12-8) (adjsn xy-12-8 xy-12-9) (adjsn xy-12-9 xy-12-10) (adjsn xy-12-10 xy-12-11) (adjsn xy-12-13 xy-12-14) (adjsn xy-12-14 xy-12-15) (adjsn xy-13-3 xy-13-4) (adjsn xy-13-4 xy-13-5) (adjsn xy-13-5 xy-13-6) (adjsn xy-13-6 xy-13-7) (adjsn xy-13-7 xy-13-8) (adjsn xy-13-8 xy-13-9) (adjsn xy-13-9 xy-13-10) (adjsn xy-13-10 xy-13-11) (adjsn xy-14-3 xy-14-4) (adjsn xy-14-6 xy-14-7) (adjsn xy-14-7 xy-14-8) (adjsn xy-14-8 xy-14-9) (adjsn xy-14-9 xy-14-10) (adjsn xy-14-10 xy-14-11) (adjsn xy-14-11 xy-14-12) (adjsn xy-15-9 xy-15-10) (adjsn xy-15-10 xy-15-11) (adjsn xy-15-11 xy-15-12) (adjsn xy-16-3 xy-16-4) (adjsn xy-16-4 xy-16-5) (adjsn xy-16-5 xy-16-6) (adjsn xy-16-8 xy-16-9) (adjsn xy-17-5 xy-17-6) (adjsn xy-17-8 xy-17-9) (adjsn xy-17-9 xy-17-10) (adjsn xy-17-12 xy-17-13) (adjsn xy-17-13 xy-17-14) (adjsn xy-18-3 xy-18-4) (adjsn xy-18-4 xy-18-5) (adjsn xy-18-5 xy-18-6) (adjsn xy-18-6 xy-18-7) (adjsn xy-18-7 xy-18-8) (adjsn xy-18-8 xy-18-9) (adjsn xy-18-9 xy-18-10) (adjsn xy-19-4 xy-19-5) (adjsn xy-19-5 xy-19-6) (adjsn xy-19-6 xy-19-7) (adjsn xy-19-7 xy-19-8) (adjsn xy-19-8 xy-19-9)

        (crate_at xy-3-15) (crate_at xy-6-15) (crate_at xy-14-11) (crate_at xy-13-10) (crate_at xy-14-10) (crate_at xy-15-10) (crate_at xy-14-9) (crate_at xy-16-9) (crate_at xy-13-8) (crate_at xy-7-7) (crate_at xy-14-7) (crate_at xy-18-7) (crate_at xy-18-6) (crate_at xy-18-5) (crate_at xy-13-4)
        (sokoban_at xy-15-9)
    )
    (:goal (and (crate_at xy-3-13) (crate_at xy-4-13) (crate_at xy-3-12) (crate_at xy-3-11) (crate_at xy-4-11) (crate_at xy-5-11) (crate_at xy-6-11) (crate_at xy-4-10) (crate_at xy-5-10) (crate_at xy-6-10) (crate_at xy-4-9) (crate_at xy-4-7) (crate_at xy-4-6) (crate_at xy-4-5) (crate_at xy-5-5)))
)


