(define (problem sokoban38)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11
        v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
	)
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10) (adjsn v10 v11) (adjsn v11 v12)
        
        (wall_at h7 v12) (wall_at h8 v12) (wall_at h9 v12) (wall_at h10 v12) (wall_at h1 v11) (wall_at h2 v11) (wall_at h3 v11) (wall_at h4 v11) (wall_at h5 v11) (wall_at h6 v11) (wall_at h7 v11) (wall_at h10 v11) (wall_at h1 v10) (wall_at h10 v10) (wall_at h1 v9) (wall_at h6 v9) (wall_at h7 v9) (wall_at h10 v9) (wall_at h1 v8) (wall_at h2 v8) (wall_at h4 v8) (wall_at h8 v8) (wall_at h10 v8) (wall_at h2 v7) (wall_at h10 v7) (wall_at h2 v6) (wall_at h4 v6) (wall_at h8 v6) (wall_at h10 v6) (wall_at h11 v6) (wall_at h2 v5) (wall_at h6 v5) (wall_at h8 v5) (wall_at h11 v5) (wall_at h2 v4) (wall_at h11 v4) (wall_at h2 v3) (wall_at h5 v3) (wall_at h6 v3) (wall_at h7 v3) (wall_at h8 v3) (wall_at h9 v3) (wall_at h10 v3) (wall_at h11 v3) (wall_at h2 v2) (wall_at h3 v2) (wall_at h4 v2) (wall_at h5 v2)
        (crate_at h7 v10) (crate_at h5 v9) (crate_at h9 v9) (crate_at h3 v8) (crate_at h4 v7) (crate_at h9 v5) (crate_at h3 v4) (crate_at h6 v4)
        (sokoban_at h9 v11)
    )
    (:goal (and (crate_at h5 v8) (crate_at h6 v8) (crate_at h7 v8) (crate_at h5 v7) (crate_at h6 v7) (crate_at h7 v7) (crate_at h5 v6) (crate_at h7 v6)))
)


