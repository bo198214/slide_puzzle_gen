(define (problem sokoban-dh1-07)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9
        v2 v3 v4 v5 v6 v7 v8 v9 v10
	)
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7) (adjsn v7 v8) (adjsn v8 v9) (adjsn v9 v10)
        
        (wall_at h3 v10) (wall_at h4 v10) (wall_at h5 v10) (wall_at h6 v10) (wall_at h7 v10) (wall_at h1 v9) (wall_at h2 v9) (wall_at h3 v9) (wall_at h7 v9) (wall_at h1 v8) (wall_at h7 v8) (wall_at h8 v8) (wall_at h9 v8) (wall_at h1 v7) (wall_at h3 v7) (wall_at h9 v7) (wall_at h1 v6) (wall_at h3 v6) (wall_at h7 v6) (wall_at h9 v6) (wall_at h1 v5) (wall_at h3 v5) (wall_at h9 v5) (wall_at h1 v4) (wall_at h7 v4) (wall_at h8 v4) (wall_at h9 v4) (wall_at h1 v3) (wall_at h2 v3) (wall_at h3 v3) (wall_at h7 v3) (wall_at h3 v2) (wall_at h4 v2) (wall_at h5 v2) (wall_at h6 v2) (wall_at h7 v2)
        (crate_at h3 v8) (crate_at h4 v8) (crate_at h5 v7) (crate_at h6 v7) (crate_at h4 v5) (crate_at h5 v5) (crate_at h7 v5)
        (sokoban_at h5 v8)
    )
    (:goal (and (crate_at h4 v8) (crate_at h6 v8) (crate_at h5 v7) (crate_at h4 v6) (crate_at h6 v6) (crate_at h5 v5) (crate_at h6 v4)))
)

