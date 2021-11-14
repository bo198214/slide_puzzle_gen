(define (problem sokoban50)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19
        v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
	)
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11) (adjwe h11 h12) (adjwe h12 h13) (adjwe h13 h14) (adjwe h14 h15) (adjwe h15 h16) (adjwe h16 h17) (adjwe h17 h18) (adjwe h18 h19)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10) (adjsn v10 v11) (adjsn v11 v12) (adjsn v12 v13) (adjsn v13 v14) (adjsn v14 v15) (adjsn v15 v16) (adjsn v16 v17)
        
        (wall_at h7 v17) (wall_at h8 v17) (wall_at h9 v17) (wall_at h10 v17) (wall_at h11 v17) (wall_at h12 v17) (wall_at h13 v17) (wall_at h14 v17) (wall_at h15 v17) (wall_at h16 v17) (wall_at h17 v17) (wall_at h18 v17) (wall_at h6 v16) (wall_at h7 v16) (wall_at h14 v16) (wall_at h18 v16) (wall_at h5 v15) (wall_at h6 v15) (wall_at h18 v15) (wall_at h4 v14) (wall_at h5 v14) (wall_at h10 v14) (wall_at h12 v14) (wall_at h14 v14) (wall_at h17 v14) (wall_at h18 v14) (wall_at h4 v13) (wall_at h9 v13) (wall_at h11 v13) (wall_at h13 v13) (wall_at h18 v13) (wall_at h1 v12) (wall_at h2 v12) (wall_at h3 v12) (wall_at h4 v12) (wall_at h8 v12) (wall_at h11 v12) (wall_at h16 v12) (wall_at h18 v12) (wall_at h1 v11) (wall_at h4 v11) (wall_at h5 v11) (wall_at h7 v11) (wall_at h18 v11) (wall_at h1 v10) (wall_at h8 v10) (wall_at h9 v10) (wall_at h10 v10) (wall_at h13 v10) (wall_at h15 v10) (wall_at h17 v10) (wall_at h18 v10) (wall_at h1 v9) (wall_at h11 v9) (wall_at h13 v9) (wall_at h17 v9) (wall_at h1 v8) (wall_at h2 v8) (wall_at h3 v8) (wall_at h9 v8) (wall_at h11 v8) (wall_at h13 v8) (wall_at h15 v8) (wall_at h17 v8) (wall_at h3 v7) (wall_at h11 v7) (wall_at h13 v7) (wall_at h15 v7) (wall_at h16 v7) (wall_at h17 v7) (wall_at h18 v7) (wall_at h19 v7) (wall_at h3 v6) (wall_at h6 v6) (wall_at h8 v6) (wall_at h9 v6) (wall_at h10 v6) (wall_at h11 v6) (wall_at h12 v6) (wall_at h19 v6) (wall_at h3 v5) (wall_at h8 v5) (wall_at h12 v5) (wall_at h16 v5) (wall_at h19 v5) (wall_at h3 v4) (wall_at h6 v4) (wall_at h7 v4) (wall_at h8 v4) (wall_at h12 v4) (wall_at h13 v4) (wall_at h19 v4) (wall_at h3 v3) (wall_at h6 v3) (wall_at h13 v3) (wall_at h18 v3) (wall_at h19 v3) (wall_at h3 v2) (wall_at h4 v2) (wall_at h5 v2) (wall_at h6 v2) (wall_at h13 v2) (wall_at h14 v2) (wall_at h15 v2) (wall_at h16 v2) (wall_at h17 v2) (wall_at h18 v2)
        (crate_at h9 v15) (crate_at h11 v15) (crate_at h16 v15) (crate_at h8 v14) (crate_at h15 v14) (crate_at h7 v13) (crate_at h15 v13) (crate_at h4 v10) (crate_at h6 v10) (crate_at h3 v9) (crate_at h7 v9) (crate_at h4 v8) (crate_at h5 v8) (crate_at h7 v7) (crate_at h5 v6) (crate_at h4 v5)
        (sokoban_at h3 v10)
    )
    (:goal (and (crate_at h8 v16) (crate_at h9 v16) (crate_at h7 v15) (crate_at h8 v15) (crate_at h6 v14) (crate_at h7 v14) (crate_at h9 v14) (crate_at h5 v13) (crate_at h6 v13) (crate_at h8 v13) (crate_at h5 v12) (crate_at h6 v12) (crate_at h7 v12)))
)

