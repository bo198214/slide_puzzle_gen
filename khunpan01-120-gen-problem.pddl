(define (problem khunpan01-120-gen)
    (:domain khunpan01-120-gen)
    (:objects 
        h1 h2 h3 h4
        v1 v2 v3 v4 v5
        th to1 to2 to3 to4 tsq tv1 tv2 tv3 tv4
        n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 n18 n19 n20 n21 n22 n23 n24 n25 n26 n27 n28 n29 n30 n31 n32 n33 n34 n35 n36 n37 n38 n39 n40 n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 n51 n52 n53 n54 n55 n56 n57 n58 n59 n60 n61 n62 n63 n64 n65 n66 n67 n68 n69 n70 n71 n72 n73 n74 n75 n76 n77 n78 n79 n80 n81 n82 n83 n84 n85 n86 n87 n88 n89 n90 n91 n92 n93 n94 n95 n96 n97 n98 n99 n100 n101 n102 n103 n104 n105 n106 n107 n108 n109 n110 n111 n112 n113 n114 n115 n116 n117 n118 n119 n120
    )
    (:init 
        (adjwe h1 h2) (adjwe h2 h3) (adjwe h3 h4)
        (adjns v1 v2) (adjns v2 v3) (adjns v3 v4) (adjns v4 v5)
        (type_2 th) (type_1 to1) (type_1 to2) (type_1 to3) (type_1 to4) (type_4 tsq) (type_3 tv1) (type_3 tv2) (type_3 tv3) (type_3 tv4)

        (at tv1 h1 v5) (at tsq h2 v5) (at tsq h3 v5) (at tv2 h4 v5)
        (at tv1 h1 v4) (at tsq h2 v4) (at tsq h3 v4) (at tv2 h4 v4)
        (empty h1 v3) (at th h2 v3) (at th h3 v3) (empty h4 v3)
        (at tv3 h1 v2) (at to1 h2 v2) (at to2 h3 v2) (at tv4 h4 v2)
        (at tv3 h1 v1) (at to3 h2 v1) (at to4 h3 v1) (at tv4 h4 v1)


        (succ n0 n1) (succ n1 n2) (succ n2 n3) (succ n3 n4) (succ n4 n5) (succ n5 n6) (succ n6 n7) (succ n7 n8) (succ n8 n9) (succ n9 n10) (succ n10 n11) (succ n11 n12) (succ n12 n13) (succ n13 n14) (succ n14 n15) (succ n15 n16) (succ n16 n17) (succ n17 n18) (succ n18 n19) (succ n19 n20) (succ n20 n21) (succ n21 n22) (succ n22 n23) (succ n23 n24) (succ n24 n25) (succ n25 n26) (succ n26 n27) (succ n27 n28) (succ n28 n29) (succ n29 n30) (succ n30 n31) (succ n31 n32) (succ n32 n33) (succ n33 n34) (succ n34 n35) (succ n35 n36) (succ n36 n37) (succ n37 n38) (succ n38 n39) (succ n39 n40) (succ n40 n41) (succ n41 n42) (succ n42 n43) (succ n43 n44) (succ n44 n45) (succ n45 n46) (succ n46 n47) (succ n47 n48) (succ n48 n49) (succ n49 n50) (succ n50 n51) (succ n51 n52) (succ n52 n53) (succ n53 n54) (succ n54 n55) (succ n55 n56) (succ n56 n57) (succ n57 n58) (succ n58 n59) (succ n59 n60) (succ n60 n61) (succ n61 n62) (succ n62 n63) (succ n63 n64) (succ n64 n65) (succ n65 n66) (succ n66 n67) (succ n67 n68) (succ n68 n69) (succ n69 n70) (succ n70 n71) (succ n71 n72) (succ n72 n73) (succ n73 n74) (succ n74 n75) (succ n75 n76) (succ n76 n77) (succ n77 n78) (succ n78 n79) (succ n79 n80) (succ n80 n81) (succ n81 n82) (succ n82 n83) (succ n83 n84) (succ n84 n85) (succ n85 n86) (succ n86 n87) (succ n87 n88) (succ n88 n89) (succ n89 n90) (succ n90 n91) (succ n91 n92) (succ n92 n93) (succ n93 n94) (succ n94 n95) (succ n95 n96) (succ n96 n97) (succ n97 n98) (succ n98 n99) (succ n99 n100) (succ n100 n101) (succ n101 n102) (succ n102 n103) (succ n103 n104) (succ n104 n105) (succ n105 n106) (succ n106 n107) (succ n107 n108) (succ n108 n109) (succ n109 n110) (succ n110 n111) (succ n111 n112) (succ n112 n113) (succ n113 n114) (succ n114 n115) (succ n115 n116) (succ n116 n117) (succ n117 n118) (succ n118 n119) (succ n119 n120)
        (counter n0)
    )
    (:goal (and (at tsq h2 v2) (at tsq h3 v2) (at tsq h2 v1) (at tsq h3 v1)))
)

