(define (problem n8puzzle02-gen)
    (:domain n8puzzle02-gen)
    (:objects 
        h1 - xloc h2 - xloc h3 - xloc
        v1 - yloc v2 - yloc v3 - yloc
        tile1 - type_1 tile2 - type_1 tile3 - type_1 tile4 - type_1 tile5 - type_1 tile6 - type_1 tile7 - type_1 tile8 - type_1
        n0 - count n1 - count n2 - count n3 - count n4 - count n5 - count n6 - count n7 - count n8 - count n9 - count n10 - count n11 - count n12 - count n13 - count n14 - count n15 - count n16 - count n17 - count n18 - count n19 - count n20 - count n21 - count n22 - count n23 - count n24 - count n25 - count n26 - count n27 - count n28 - count n29 - count n30 - count
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3)
        (adjns v1 v2) (adjns v2 v3)

        (empty h1 v3) (at tile8 h2 v3) (at tile7 h3 v3)
        (at tile6 h1 v2) (at tile5 h2 v2) (at tile4 h3 v2)
        (at tile3 h1 v1) (at tile2 h2 v1) (at tile1 h3 v1)


        (succ n0 n1) (succ n1 n2) (succ n2 n3) (succ n3 n4) (succ n4 n5) (succ n5 n6) (succ n6 n7) (succ n7 n8) (succ n8 n9) (succ n9 n10) (succ n10 n11) (succ n11 n12) (succ n12 n13) (succ n13 n14) (succ n14 n15) (succ n15 n16) (succ n16 n17) (succ n17 n18) (succ n18 n19) (succ n19 n20) (succ n20 n21) (succ n21 n22) (succ n22 n23) (succ n23 n24) (succ n24 n25) (succ n25 n26) (succ n26 n27) (succ n27 n28) (succ n28 n29) (succ n29 n30)
        (counter n0)
    )
    (:goal (and (at tile1 h1 v3) (at tile2 h2 v3) (at tile3 h3 v3) (at tile4 h1 v2) (at tile5 h2 v2) (at tile6 h3 v2) (at tile7 h1 v1) (at tile8 h2 v1) (empty h3 v1)))
)

