(define (problem sokoban28)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17
        v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
	)
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11) (adjwe h11 h12) (adjwe h12 h13) (adjwe h13 h14) (adjwe h14 h15) (adjwe h15 h16) (adjwe h16 h17)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10) (adjsn v10 v11) (adjsn v11 v12) (adjsn v12 v13) (adjsn v13 v14) (adjsn v14 v15) (adjsn v15 v16)
        
        (wall_at h10 v16) (wall_at h11 v16) (wall_at h12 v16) (wall_at h13 v16) (wall_at h14 v16) (wall_at h6 v15) (wall_at h7 v15) (wall_at h8 v15) (wall_at h9 v15) (wall_at h10 v15) (wall_at h14 v15) (wall_at h5 v14) (wall_at h6 v14) (wall_at h14 v14) (wall_at h15 v14) (wall_at h16 v14) (wall_at h17 v14) (wall_at h1 v13) (wall_at h2 v13) (wall_at h3 v13) (wall_at h4 v13) (wall_at h5 v13) (wall_at h14 v13) (wall_at h15 v13) (wall_at h17 v13) (wall_at h1 v12) (wall_at h13 v12) (wall_at h14 v12) (wall_at h17 v12) (wall_at h1 v11) (wall_at h4 v11) (wall_at h5 v11) (wall_at h6 v11) (wall_at h7 v11) (wall_at h8 v11) (wall_at h9 v11) (wall_at h11 v11) (wall_at h12 v11) (wall_at h13 v11) (wall_at h17 v11) (wall_at h1 v10) (wall_at h2 v10) (wall_at h4 v10) (wall_at h7 v10) (wall_at h12 v10) (wall_at h17 v10) (wall_at h1 v9) (wall_at h7 v9) (wall_at h12 v9) (wall_at h17 v9) (wall_at h1 v8) (wall_at h4 v8) (wall_at h7 v8) (wall_at h8 v8) (wall_at h10 v8) (wall_at h11 v8) (wall_at h12 v8) (wall_at h13 v8) (wall_at h17 v8) (wall_at h1 v7) (wall_at h2 v7) (wall_at h3 v7) (wall_at h4 v7) (wall_at h13 v7) (wall_at h14 v7) (wall_at h17 v7) (wall_at h4 v6) (wall_at h5 v6) (wall_at h17 v6) (wall_at h5 v5) (wall_at h13 v5) (wall_at h17 v5) (wall_at h5 v4) (wall_at h14 v4) (wall_at h15 v4) (wall_at h16 v4) (wall_at h17 v4) (wall_at h5 v3) (wall_at h6 v3) (wall_at h7 v3) (wall_at h8 v3) (wall_at h9 v3) (wall_at h10 v3) (wall_at h14 v3) (wall_at h10 v2) (wall_at h11 v2) (wall_at h12 v2) (wall_at h13 v2) (wall_at h14 v2)
        (crate_at h8 v14) (crate_at h11 v14) (crate_at h7 v13) (crate_at h10 v13) (crate_at h12 v13) (crate_at h9 v12) (crate_at h10 v12) (crate_at h3 v9) (crate_at h5 v8) (crate_at h7 v7) (crate_at h9 v7) (crate_at h10 v7) (crate_at h8 v6) (crate_at h10 v6) (crate_at h13 v6) (crate_at h7 v5) (crate_at h8 v5) (crate_at h11 v5) (crate_at h9 v4) (crate_at h11 v4)
        (sokoban_at h2 v8)
    )
    (:goal (and (crate_at h16 v13) (crate_at h15 v12) (crate_at h16 v12) (crate_at h14 v11) (crate_at h15 v11) (crate_at h13 v10) (crate_at h14 v10) (crate_at h15 v10) (crate_at h13 v9) (crate_at h14 v9) (crate_at h15 v9) (crate_at h14 v8) (crate_at h15 v8) (crate_at h16 v8) (crate_at h15 v7) (crate_at h16 v7) (crate_at h14 v6) (crate_at h15 v6) (crate_at h16 v6) (crate_at h16 v5)))
)

