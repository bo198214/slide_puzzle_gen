(define (problem sokoban52X)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19
        v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
    )
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11) (adjwe h11 h12) (adjwe h12 h13) (adjwe h13 h14) (adjwe h14 h15) (adjwe h15 h16) (adjwe h16 h17) (adjwe h17 h18) (adjwe h18 h19)
        (adjsn v1 v2) (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10) (adjsn v10 v11) (adjsn v11 v12) (adjsn v12 v13) (adjsn v13 v14) (adjsn v14 v15) (adjsn v15 v16) (adjsn v16 v17)
        
        (wall_at h12 v17) (wall_at h13 v17) (wall_at h14 v17) (wall_at h15 v17) (wall_at h16 v17) (wall_at h17 v17) (wall_at h18 v17) (wall_at h19 v17) (wall_at h12 v16) (wall_at h19 v16) (wall_at h4 v15) (wall_at h5 v15) (wall_at h6 v15) (wall_at h7 v15) (wall_at h12 v15) (wall_at h19 v15) (wall_at h4 v14) (wall_at h7 v14) (wall_at h8 v14) (wall_at h9 v14) (wall_at h10 v14) (wall_at h11 v14) (wall_at h12 v14) (wall_at h13 v14) (wall_at h14 v14) (wall_at h15 v14) (wall_at h19 v14) (wall_at h4 v13) (wall_at h15 v13) (wall_at h19 v13) (wall_at h4 v12) (wall_at h7 v12) (wall_at h9 v12) (wall_at h11 v12) (wall_at h13 v12) (wall_at h15 v12) (wall_at h19 v12) (wall_at h1 v11) (wall_at h2 v11) (wall_at h3 v11) (wall_at h4 v11) (wall_at h5 v11) (wall_at h7 v11) (wall_at h9 v11) (wall_at h11 v11) (wall_at h13 v11) (wall_at h15 v11) (wall_at h19 v11) (wall_at h1 v10) (wall_at h5 v10) (wall_at h7 v10) (wall_at h8 v10) (wall_at h9 v10) (wall_at h11 v10) (wall_at h12 v10) (wall_at h13 v10) (wall_at h15 v10) (wall_at h16 v10) (wall_at h18 v10) (wall_at h19 v10) (wall_at h1 v9) (wall_at h8 v9) (wall_at h16 v9) (wall_at h18 v9) (wall_at h1 v8) (wall_at h12 v8) (wall_at h18 v8) (wall_at h1 v7) (wall_at h5 v7) (wall_at h7 v7) (wall_at h8 v7) (wall_at h9 v7) (wall_at h11 v7) (wall_at h12 v7) (wall_at h13 v7) (wall_at h15 v7) (wall_at h16 v7) (wall_at h18 v7) (wall_at h1 v6) (wall_at h2 v6) (wall_at h3 v6) (wall_at h5 v6) (wall_at h12 v6) (wall_at h18 v6) (wall_at h2 v5) (wall_at h3 v5) (wall_at h8 v5) (wall_at h16 v5) (wall_at h17 v5) (wall_at h18 v5) (wall_at h2 v4) (wall_at h5 v4) (wall_at h7 v4) (wall_at h8 v4) (wall_at h9 v4) (wall_at h11 v4) (wall_at h12 v4) (wall_at h13 v4) (wall_at h15 v4) (wall_at h16 v4) (wall_at h2 v3) (wall_at h15 v3) (wall_at h2 v2) (wall_at h5 v2) (wall_at h6 v2) (wall_at h7 v2) (wall_at h8 v2) (wall_at h9 v2) (wall_at h10 v2) (wall_at h11 v2) (wall_at h12 v2) (wall_at h13 v2) (wall_at h14 v2) (wall_at h15 v2) (wall_at h2 v1) (wall_at h3 v1) (wall_at h4 v1) (wall_at h5 v1)
        (crate_at h6 v13) (crate_at h10 v13) (crate_at h6 v9) (crate_at h10 v9) (crate_at h12 v9) (crate_at h14 v9) (crate_at h3 v8) (crate_at h4 v8) (crate_at h5 v8) (crate_at h8 v8) (crate_at h10 v7) (crate_at h14 v7) (crate_at h8 v6) (crate_at h5 v5) (crate_at h10 v5) (crate_at h12 v5) (crate_at h14 v5) (crate_at h4 v3)
        (sokoban_at h12 v11)
    )
    (:goal (and (crate_at h13 v16) (crate_at h14 v16) (crate_at h15 v16) (crate_at h16 v16) (crate_at h17 v16) (crate_at h18 v16) (crate_at h13 v15) (crate_at h14 v15) (crate_at h15 v15) (crate_at h16 v15) (crate_at h17 v15) (crate_at h18 v15) (crate_at h16 v14) (crate_at h17 v14) (crate_at h18 v14) (crate_at h16 v13) (crate_at h17 v13) (crate_at h18 v13)))
)


