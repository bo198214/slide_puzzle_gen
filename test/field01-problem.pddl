(define (problem field01)
    (:domain sokoban)
    (:objects
        h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11
        v2 v3 v4 v5 v6 v7
    )
    (:init
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4) (adjwe h4 h5) (adjwe h5 h6) (adjwe h6 h7) (adjwe h7 h8) (adjwe h8 h9) (adjwe h9 h10) (adjwe h10 h11)
        (adjsn v2 v3) (adjsn v3 v4) (adjsn v4 v5) (adjsn v5 v6) (adjsn v6 v7)
        
        (wall_at h6 v6) (wall_at h6 v5) (wall_at h6 v4) (wall_at h6 v3) (wall_at h6 v2)
        
        (sokoban_at h1 v2)
    )
    (:goal (and  (sokoban_at h11 v2)))
)


