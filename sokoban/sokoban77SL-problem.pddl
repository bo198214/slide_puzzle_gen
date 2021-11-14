(define (problem sokoban77SL)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14
        v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
	)
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11) (adjwe h11 h12) (adjwe h12 h13) (adjwe h13 h14)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10) (adjsn v10 v11) (adjsn v11 v12) (adjsn v12 v13) (adjsn v13 v14)
        
        (wall_at h1 v14) (wall_at h2 v14) (wall_at h3 v14) (wall_at h4 v14) (wall_at h5 v14) (wall_at h6 v14) (wall_at h9 v14) (wall_at h10 v14) (wall_at h11 v14) (wall_at h12 v14) (wall_at h13 v14) (wall_at h1 v13) (wall_at h6 v13) (wall_at h9 v13) (wall_at h13 v13) (wall_at h1 v12) (wall_at h6 v12) (wall_at h7 v12) (wall_at h8 v12) (wall_at h9 v12) (wall_at h13 v12) (wall_at h1 v11) (wall_at h13 v11) (wall_at h1 v10) (wall_at h4 v10) (wall_at h5 v10) (wall_at h6 v10) (wall_at h8 v10) (wall_at h9 v10) (wall_at h10 v10) (wall_at h13 v10) (wall_at h1 v9) (wall_at h2 v9) (wall_at h3 v9) (wall_at h4 v9) (wall_at h5 v9) (wall_at h6 v9) (wall_at h7 v9) (wall_at h8 v9) (wall_at h9 v9) (wall_at h10 v9) (wall_at h12 v9) (wall_at h13 v9) (wall_at h14 v9) (wall_at h1 v8) (wall_at h7 v8) (wall_at h8 v8) (wall_at h14 v8) (wall_at h1 v7) (wall_at h7 v7) (wall_at h8 v7) (wall_at h14 v7) (wall_at h1 v6) (wall_at h7 v6) (wall_at h8 v6) (wall_at h14 v6) (wall_at h1 v5) (wall_at h7 v5) (wall_at h8 v5) (wall_at h14 v5) (wall_at h1 v4) (wall_at h14 v4) (wall_at h1 v3) (wall_at h2 v3) (wall_at h3 v3) (wall_at h6 v3) (wall_at h7 v3) (wall_at h8 v3) (wall_at h9 v3) (wall_at h10 v3) (wall_at h11 v3) (wall_at h12 v3) (wall_at h13 v3) (wall_at h14 v3) (wall_at h3 v2) (wall_at h4 v2) (wall_at h5 v2) (wall_at h6 v2)
        (crate_at h3 v12) (crate_at h11 v12) (crate_at h3 v11) (crate_at h10 v11) (crate_at h11 v10) (crate_at h9 v7) (crate_at h10 v6) (crate_at h10 v5) (crate_at h9 v4) (crate_at h11 v4)
        (sokoban_at h7 v10)
    )
    (:goal (and (crate_at h2 v8) (crate_at h3 v8) (crate_at h2 v7) (crate_at h3 v7) (crate_at h2 v6) (crate_at h3 v6) (crate_at h2 v5) (crate_at h3 v5) (crate_at h2 v4) (crate_at h3 v4)))
)

