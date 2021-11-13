import slide_puzzle_gen

levels = {}

levels["01"] = """
----#####
----#---#
----#$--#
--###--$##
--#--$-$-#
###-#-##-#---######
#---#-##-#####--..#
#-$--$----------..#
#####-###-#@##--..#
----#-----#########
----#######
"""
# Title: 1
# Comment: Sokoban #1. Arranged.

levels["02"] = """
############
#..--#-----###
#..--#-$--$--#
#..--#$####--#
#..----@-##--#
#..--#-#--$-##
######-##$-$-#
--#-$--$-$-$-#
--#----#-----#
--############
"""
# Title: 2
# Author: Katsuhiko Sadamoto.
# Comment: Sokoban #2

levels["03"] = """
--------########
--------#-----@#
--------#-$#$-##
--------#-$--$#
--------##$-$-#
#########-$-#-###
#....--##-$--$--#
##...----$--$---#
#....--##########
########
"""
# Title: 3
# Comment: Sokoban #3

levels["04"] = """
-----------########
-----------#--....#
############--....#
#----#--$-$---....#
#-$$$#$--$-#--....#
#--$-----$-#--....#
#-$$-#$-$-$########
#--$-#-----#
##-#########
#----#----##
#-----$---##
#--$$#$$--@#
#----#----##
###########
"""
# Title: 4
# Comment: Sokoban #4. Arranged.

levels["05"] = """
--------#####
--------#---#####
--------#-#$##--#
--------#-----$-#
#########-###---#
#....--##-$--$###
#....----$-$$-##
#....--##$--$-@#
#########--$--##
--------#-$-$--#
--------###-##-#
----------#----#
----------######
"""
# Title: 5
# Comment: Sokoban #5.

levels["06"] = """
######--###
#..--#-##@##
#..--###---#
#..-----$$-#
#..--#-#-$-#
#..###-#-$-#
####-$-#$--#
---#--$#-$-#
---#-$--$--#
---#--##---#
---#########
"""
# Title: 6
# Comment: Sokoban #6

levels["07"] = """
-------#####
-#######---##
##-#-@##-$$-#
#----$------#
#--$--###---#
###-#####$###
#-$--###-..#
#-$-$-$-...#
#----###...#
#-$$-#-#...#
#--###-#####
####
"""
# Title: 7
# Comment: Sokoban #7. Arranged.

levels["08"] = """
--####
--#--###########
--#----$---$-$-#
--#-$#-$-#--$--#
--#--$-$--#----#
###-$#-#--####-#
#@#$-$-$--##---#
#----$-#$#---#-#
#---$----$-$-$-#
#####--#########
--#------#
--#------#
--#......#
--#......#
--#......#
--########
"""
# Title: 8
# Comment: Sokoban #8. Arranged. Error? Easier solution.

levels["09"] = """
----------#######
----------#--...#
------#####--...#
------#------.-.#
------#--##--...#
------##-##--...#
-----###-########
-----#-$$$-##
-#####--$-$-#####
##---#$-$---#---#
#@-$--$----$--$-#
######-$$-$-#####
-----#------#
-----########
"""
# Title: 9
# Comment: Sokoban #9. Arranged. Minus one box.

levels["10"] = """
-###--#############
##@####-------#---#
#-$$---$$--$-$-...#
#--$$$#----$--#...#
#-$---#-$$-$$-#...#
###---#--$----#...#
#-----#-$-$-$-#...#
#----######-###...#
##-#--#--$-$--#...#
#--##-#-$$-$-$##..#
#-..#-#--$------#.#
#-..#-#-$$$-$$$-#.#
#####-#-------#-#.#
----#-#########-#.#
----#-----------#.#
----###############
"""
# Title: 10
# Comment: Sokoban #10. Arranged. Minus two boxes.

levels["11"] = """
----------####
-----####-#--#
---###-@###$-#
--##------$--#
-##--$-$$##-##
-#--#$##-----#
-#-#-$-$$-#-###
-#---$-#--#-$-#####
####----#--$$-#---#
####-##-$---------#
#.----###--########
#..-..#-####
#...#.#
#.....#
#######
"""
# Title: 11
# Comment: Sokoban2 #1

levels["12"] = """
################
#--------------#
#-#-######-----#
#-#--$-$-$-$#--#
#-#---$@$---##-##
#-#-#$-$-$###...#
#-#---$-$--##...#
#-###$$$-$-##...#
#-----#-##-##...#
#####---##-##...#
----#####-----###
--------#-----#
--------#######
"""
# Title: 12
# Author: Hachiro Kajiwara
# Comment: Sokoban2 #4

levels["12X"] = """
################
#--------------#
#-#-######-----#
#-#--$-$-$-$#--#
#-#---$@$---##-##
#-#--$-$-$###...#
#-#---$-$--##...#
#-###$$$-$-##...#
#-----#-##-##...#
#####---##-##...#
----#####-----###
--------#-----#
--------#######
"""
# Title: 12X
# Author: Hachiro Kajiwara
# Comment: Sokoban2 #4. The wall at E6( E'th collumn, 6th row) was
# removed in the XSokoban levelset.

levels["13"] = """
---#########
--##---##--######
###-----#--#----###
#--$-#$-#--#--...-#
#-#-$#@$##-#-#.#.-#
#--#-#$--#----.-.-#
#-$----$-#-#-#.#.-#
#---##--##$-$-.-.-#
#-$-#---#--#$#.#.-#
##-$--$---$--$...-#
-#$-######----##--#
-#--#----##########
-####
"""
# Title: 13
# Author: Akira Yotsuji
# Comment: Sokoban2 #3. Arranged. Minus two boxes.

levels["14"] = """
-------#######
-#######-----#
-#-----#-$@$-#
-#$$-#---#########
-#-###......##---#
-#---$......##-#-#
-#-###......-----#
##---####-###-#$##
#--#$---#--$--#-#
#--$-$$$--#-$##-#
#---$-$-###$$-#-#
#####-----$---#-#
----###-###---#-#
------#-----#---#
------########--#
-------------####
"""
# Title: 14
# Comment: Sokoban2 #7.

levels["15"] = """
---########
---#---#--#
---#--$---#
-###-#$---####
-#--$--##$---#
-#--#-@-$-#-$#
-#--#------$-####
-##-####$##-----#
-#-$#.....#-#---#
-#--$..**.-$#-###
##--#.....#---#
#---###-#######
#-$$--#--#
#--#-----#
######---#
-----#####
"""
# Title: 15
# Comment: Sokoban2 #5. Arranged.

levels["16"] = """
#####
#---##
#----#--####
#-$--####--#
#--$$-$---$#
###@-#$----##
-#--##--$-$-##
-#-$--##-##-.#
-#--#$##$--#.#
-###---$..##.#
--#----#.*...#
--#-$$-#.....#
--#--#########
--#--#
--####
"""
# Title: 16
# Comment: Sokoban2 #6.

levels["17"] = """
---##########
---#..--#---#
---#..------#
---#..--#--####
--#######--#--##
--#------------#
--#--#--##--#--#
####-##--####-##
#--$--#####-#--#
#-#-$--$--#-$--#
#-@$--$---#---##
####-##-#######
---#----#
---######
"""
# Title: 17
# Comment: SokobanMSX #21.

levels["18"] = """
-----###########
-----#--.--#---#
-----#-#.----@-#
-#####-##..#-####
##--#-..###-----###
#-$-#...---$-#--$-#
#----..-##--##-##-#
####$##$#-$-#---#-#
--##-#----#$-$$-#-#
--#--$-#-#--#-$##-#
--#---------------#
--#--###########--#
--####---------####
"""
# Title: 18
# Comment: Sokoban2 #8. Arranged. Minus two boxes.

levels["19"] = """
--######
--#---@####
#####-$---#
#---##----####
#-$-#--##----#
#-$-#--#####-#
##-$--$----#-#
##-$-$-###-#-#
##-#--$--#-#-#
##-#-#$#---#-#
##-###---#-#-######
#--$--####-#-#....#
#----$----$---..#.#
####$--$#-$---....#
#-------#--##-....#
###################
"""
# Title: 19
# Comment: Sokoban2 #9. Arranged. Minus five boxes.

levels["20"] = """
----##########
#####--------####
#-----#---$--#@-#
#-#######$####--###
#-#----##-#--#$-..#
#-#-$--$--#--#--#.#
#-#-$--#-----#$-..#
#-#--###-##-----#.#
#-###--#--#--#$-..#
#-#----#-$####--#.#
#-#$---$--$--#*-..#
#----$-#-$-$-#--#.#
####-$###----#*-..#
---#----$$-###....#
---#------##-######
---########
"""
# Title: 20
# Comment: Sokoban2 #10. Arranged and rotated. Minus nine(!) boxes.

levels["20X"] = """
----##########
#####--------####
#-----#---$--#@-#
#-#######$####--###
#-#----##-#--#$-..#
#-#-$-----#--#--#.#
#-#-$--#-----#$-..#
#-#--###-##-----#.#
#-###--#--#--#$-..#
#-#----#--####--#.#
#-#$---$--$--#$-..#
#----$-#-$-$-#--#.#
####-$###----#$-..#
---#----$$-###....#
---#------##-######
---########
"""
# Title: 20X
# Comment: Sokoban2 #10. Arranged and rotated. Minus nine(!) boxes. In
# the XSokoban levelset the boxes at H6 and J10 and the goals at O11 and
# O13 were removed.

levels["21"] = """
#########
#-------#
#-------####
##-####-#--#
##-#@##----#
#-$$$-$--$$#
#--#-##-$--#
#--#-##--$-####
####--$$$-$#--#
-#---##---....#
-#-#---#-#..-.#
-#---#-#-##...#
-#####-$--#...#
-----##---#####
------#####
"""
# Title: 21
# Comment: Sokoban2 #16.

levels["22"] = """
######-----####
#----#######--#####
#---$#--#--$--#---#
#--$--$--$-#-$-$--#
##$-$---#-@#-$----#
#--$-###########-##
#-#---#.......#-$#
#-##--#-......#--#
#-#---$........$-#
#-#-$-#....-..#--#
#--$-$####$####-$#
#-$---###-$---$--##
#-$-----$-$--$----#
##-######-$-#####-#
#---------#-------#
###################
"""
# Title: 22
# Comment: Sokoban2 #12. Arranged. Minus 8 boxes.

levels["23"] = """
----#######
----#--#--####
#####-$#$-#--##
#..-#--#--#---#
#..-#-$#$-#--$####
#.--#-----#$--#--#
#..---$#--#-$----#
#..@#--#$-#$--#--#
#..-#-$#-----$#--#
#..-#--#$$#$--#--##
#..-#-$#--#--$#$--#
#..-#--#--#---#---#
##.-####--#####---#
-####--####---#####
"""
# Title: 23
# Comment: Sokoban2 #13. Arranged.

levels["24"] = """
###############
#..........--.####
#..........$$.#--#
###########$-#---##
#------$--$-----$-#
##-####---#--$-#--#
#------#---##--#-##
#--$#--#-##--###-##
#-$-#$###----###-##
###--$-#--#--###-##
###----$-##-#--#-##
-#-$--#--$--$-$---#
-#--$--$#$$$--#---#
-#--#--$------#####
-#-@##--#--#--#
-##############
"""
# Title: 24
# Comment: Sokoban2 #14. Arranged. Minus one box.

levels["25"] = """
####
#--##############
#--#---..#......#
#--#-#-#####-...#
##$#----........#
#---##$######--####
#-$-#-----######@-#
##$-#-$---######--#
#--$-#$$$##-------#
#------#----#$#$###
#-####-#$$$$$----#
#-#----$-----#---#
#-#---##-##-----###
#-######$######-$-#
#--------#----#---#
##########----#####
"""
# Title: 25
# Comment: Sokoban2 #15. Arranged. Minus two boxes.

levels["25X"] = """
####
#--##############
#--#---..#......#
#--#-#-#####-...#
##$#----........#
#---##$######--####
#-$-#-----######@-#
##$-#-$---######--#
#--$-#$$$##-------#
#------#----#$#$###
#-####-#$$$$$----#
#-#----$-----#---#
#-#---##--------###
#-######$######-$-#
#--------#----#---#
##########----#####
"""
# Title: 25X
# Comment: Sokoban2 #15. Arranged. Minus two boxes. In the XSokoban
# levelset 2 walls at K13 and L13 were removed.

levels["26"] = """
-#######
-#--#--#####
##--#--#...###
#--$#--#...--#
#-$-#$$-...--#
#--$#--#...-.#
#---#-$########
##$-------$-$-#
##--#--$$-#---#
-######--##$$@#
------#------##
------########
"""
# Title: 26
# Author: Shinji Yamada
# Comment: Sokoban2 #21.

levels["27"] = """
-#################
-#...---#----#---##
##.....--$##-#-#$-#
#......#--$--#----#
#......#--#--#-#--#
#########-$--$-$--#
--#-----#$##$-##$##
-##---$----#-$----#
-#--##-###-#--##$-#
-#-$-$$-----$--$--#
-#-$----$##$-######
-#######--@-##
-------######
"""
# Title: 27
# Author: Akira Yotsumichi
# Comment: Sokoban2 #17. Arranged.

levels["28"] = """
---------#####
-----#####---#
----##-$--$--####
#####-$--$-$-##.#
#-------$$--##..#
#--######-###..-#
##-#--#----#...-#
#-$---#----#...-#
#@-#$-##-####...#
####--$-$$--##..#
---##--$-$--$...#
----#-$$--$-#--.#
----#---$-$--####
----######---#
---------#####
"""
# Title: 28
# Comment: Sokoban2 #18. Rotated.

levels["29"] = """
#####
#---##
#-$--#########
##-#-#-------######
##-#---$#$#@--#---#
#--#------$-#---$-#
#--###-#########-##
#--##-..*.....-#-##
##-##-*.*..*.*-#-##
#-$##########-##$-#
#--$---$--$----$--#
#--#---#---#---#--#
###################
"""
# Title: 29
# Comment: Sokoban2 #43. Rotated.

levels["30"] = """
-------###########
-------#---#-----#
#####--#-----$-$-#
#---#####-$##-#-##
#-$-##---#-##-$--#
#-$--@$$-#-##$$$-#
##-###---#-##----#
##-#---###-#####$#
##-#-----$--#....#
#--###-##-$-#....##
#-$---$-#---#..$.-#
#--##-$-#--##....-#
#####---######...##
----#####----#####
"""
# Title: 30
# Comment: Sokoban2 #20. Arranged and rotated.

levels["31"] = """
--####
--#--#########
-##--##--#---#
-#--$#-$@$---####
-#$--$--#-$-$#--##
##--$##-#$-$-----#
#--#--#-#---$$$--#
#-$----$--$##-####
#-$-$-#$#--#--#
##--###--###$-#
-#--#....-----#
-####......####
---#....####
---#...##
---#...#
---#####
"""
# Title: 31
# Comment: Sokoban2 #22.

levels["32"] = """
------####
--#####--#
-##-----$#
##-$--##-###
#@$-$-#-$--#
####-##---$#
-#....#$-$-#
-#....#---$#
-#....--$$-##
-#...-#-$---#
-######$-$--#
------#---###
------#$-###
------#--#
------####
"""
# Title: 32
# Comment: Sokoban2 #23.

levels["33"] = """
############
##-----##--#
##---$---$-#
####-##-$$-#
#---$-#----#
#-$$$-#-####
#---#-#-$-##
#--#--#--$-#
#-$#-$#----#
#---..#-####
####..-$-#@#
#.....#-$#-#
##....#--$-#
###..##----#
############
"""
# Title: 33
# Author: Noriko Hashimoto
# Comment: Sokoban2 #24.

levels["34"] = """
-#########
-#....---##
-#.#.#--$-##
##....#-#-@##
#-....#--#--##
#-----#$-##$-#
##-###--$----#
-#$--$-$-$#--#
-#-#--$-$-##-#
-#--###--##--#
-#----##-##-##
-#--$-#--$--#
-###$-$---###
---#--#####
---####
"""
# Title: 34
# Comment: Sokoban2 #28.

levels["35"] = """
############-######
#---#----#-###....#
#---$$#---@--.....#
#---#-###---#-....#
##-##-###--#--....#
-#-$-$-----#-#-####
-#--$-$##--#------#
####-#--####-#-##-#
#--#-#$---##-#----#
#-$--$--#-##-#---##
#-#-$-$----#-#---#
#--$-##-##-#-#####
#-$$-----$$--#
##-##-###-$--#
-#----#-#----#
-######-######
"""
# Title: 35
# Author: Katsuaki Yonetani
# Comment: Sokoban2 #25. Arranged.

levels["36"] = """
------------#####
#####--######---#
#---####--$-$-$-#
#-$---##-##-##--##
#---$-$-----$--$-#
###-$--##-##-----##
--#-#####-#####$$-#
-##$#####-@##-----#
-#-$--###$###-$--##
-#-$--#---###--###
-#-$$-$-#---$$-#
-#-----#---##--#
-#######..-.###
----#.........#
----#.........#
----###########
"""
# Title: 36
# Author: Hiroshi Tanaka
# Comment: Sokoban2 #26. Arranged and rotated.

levels["37"] = """
###########
#......---#########
#......---#--##---#
#..###-$----$-----#
#...-$-$-#--###---#
#...#$#####----#--#
###----#---#$--#$-#
--#--$$-$-$--$##--#
--#--$---#$#$-##$-#
--###-##-#----##--#
---#--$-$-##-######
---#----$--$--#
---##---#-#---#
----#####@#####
--------###
"""
# Title: 37
# Comment: Sokoban2 #27. Arranged.

levels["37X"] = """
###########
#......---#########
#......---#--##---#
#..###-$----$-----#
#...-$-$-#---##---#
#...#$#####----#--#
###----#---#$--#$-#
--#--$$-$-$--$##--#
--#--$---#$#$-##$-#
--###-##-#----##--#
---#--$-$-##-######
---#----$--$--#
---##---#-#---#
----#####@#####
--------###
"""
# Title: 37X
# Comment: Sokoban2 #27. Arranged. In the XSokoban levelset the wall at
# M5 was removed.

levels["38"] = """
------####
#######-@#
#-----$--#
#---$##-$#
##$#...#-#
-#-$...--#
-#-#.-.#-##
-#---#-#$-#
-#$--$----#
-#--#######
-####
"""
# Title: 38
# Author: Yoshiki Kondo.
# Comment: Sokoban2 #30.

levels["39"] = """
-------------######
-#############....#
##---##-----##....#
#--$$##--$-@##....#
#------$$-$#--....#
#--$-##-$$-#-#-...#
#--$-##-$--#--....#
##-#####-###-##.###
##---$--$-##---.--#
#-$###--#-#####-###
#---$---#-------#
#--$-#$-$-$###--#
#-$$$#-$---#-####
#----#--$$-#
######---###
-----#####
"""
# Title: 39
# Author: Yoshiki Kondo.
# Comment: Sokoban2 #29. Arranged.

levels["40"] = """
----############
----#----------##
----#--#-#$$-$--#
----#$-#$#--##-@#
---##-##-#-$-#-##
---#---$-#$--#-#
---#---#-$---#-#
---##-$-$---##-#
---#--#--##--$-#
---#----##-$$#-#
######$$---#---#
#....#--########
#.#...-##
#....---#
#....---#
#########
"""
# Title: 40
# Comment: Sokoban2 #33.

levels["41"] = """
-----------#####
----------##---##
---------##-----#
--------##--$$--#
-------##-$$--$-#
-------#-$----$-#
####---#---$$-#####
#--########-##----#
#.------------$$$@#
#.#-#######-##---##
#.#-#######.-#$-$##
#...........-#----#
##############--$-#
-------------##--##
--------------####
"""
# Title: 41
# Comment: Sokoban2 #31. Arranged. Minus one box.

levels["42"] = """
-----########
--####------######
--#----##-$-$---@#
--#-##-##$#$-$-$##
###-......#--$$-##
#---......#--#---#
#-#-......#$--$--#
#-#-......-$$#-$-#
#-$-###-###$--$-##
###--$--$--$--$-#
--#--$--$--$--$-#
--######---######
-------#####
"""
# Title: 42
# Author: Yoshiki Kondo.
# Comment: Sokoban2 #32. Arranged.

levels["42X"] = """
-----########
--####------######
--#----##-$-$---@#
--#-##-##$#$-$-$##
###-......#--$$-##
#---......#--#---#
#-#-......#$--$--#
#-#$......-$$#-$-#
#---###-###$--$-##
###--$--$--$--$-#
--#--$--$--$--$-#
--######---######
-------#####
"""
# Title: 42X
# Author: Yoshiki Kondo.
# Comment: Sokoban2 #32. Arranged. In the XSokoban levelset the box at
# C9 moved to D8.

levels["43"] = """
--------#######
----#####--#--####
----#---#---$----#
-####-#$$-##-##--#
##------#-#--##-###
#--###-$#$--$--$--#
#...----#-##--#---#
#...#----@-#-###-##
#...#--###--$--$--#
########-##---#---#
----------#########
"""
# Title: 43
# Comment: Sokoban2 #35.

levels["44"] = """
-#####
-#---#
-#-#-#######
-#------$@######
-#-$-##$-###---#
-#-####-$----$-#
-#-#####-#--#$-####
##--####-##$------#
#--$#--$--#-##-##-#
#---------#-#...#-#
######--###--...--#
-----####-#-#...#-#
----------#-###-#-#
----------#-------#
----------#########
"""
# Title: 44
# Comment: Sokoban2 #37.

levels["45"] = """
#####-####
#...#-#--####
#...###--$--#
#....##-$--$###
##....##---$--#
###...-##-$-$-#
#-##----#--$--#
#--##-#-###-####
#-$-#-#$--$----#
#--$-@-$----$--#
#---#-$-$$-$-###
#--######--###
#-##----####
###
"""
# Title: 45
# Comment: SokobanMSX #51.

levels["46"] = """
##########
#--------####
#-######-#--##
#-#-$-$-$--$-#
#-------#$---#
###$--$$#--###
--#--##-#-$##
--##$#---$-@#
---#--$-$-###
---#-#---$--#
---#-##---#-#
--##--#####-#
--#---------#
--#.......###
--#.......#
--#########
"""
# Title: 46
# Author: Shinji Yamada
# Comment: Sokoban2 #46.

levels["47"] = """
---------####
-#########--##
##--$------$-#####
#---##-##---##...#
#-#$$-$-$$#$##...#
#-#---@---#---...#
#--$#-###$$---...#
#-$--$$--$-##....#
###$-------#######
--#--#######
--####
"""
# Title: 47
# Author: Hachiro Kajiwara
# Comment: Sokoban2 #47.

levels["48"] = """
--#########
--#*.*#*.*#
--#.*.*.*.#
--#*.*.*.*#
--#.*.*.*.#
--#*.*.*.*#
--###---###
----#---#
######-######
#-----------#
#-$-$-$-$-$-#
##-$-$-$-$-##
-#$-$-$-$-$#
-#---$@$---#
-#--#####--#
-####---####
"""
# Title: 48
# Author: Katsuji shimizu
# Comment: Sokoban2 #2.

levels["49"] = """
-------####
-------#--##
-------#---##
-------#-$$-##
-----###$--$-##
--####----$---#
###--#-#####--#
#----#-#....$-#
#-#---$-....#-#
#--$-#-#.*..#-#
###--####-###-#
--####-@$--##$##
-----###-$-----#
-------#--##---#
-------#########
"""
# Title: 49
# Comment: Sokoban2 #38.

levels["50"] = """
------############
-----##..----#---#
----##..*-$----$-#
---##..*.#-#-#$-##
---#..*.#-#-#-$--#
####...#--#----#-#
#--##-#----------#
#-@$-$-###--#-#-##
#-$---$---#-#---#
###$$---#-#-#-#-#
--#---$---#-#-#####
--#-$#-#####------#
--#$---#---#---#--#
--#--###---##-----#
--#--#------#----##
--####------######
"""
# Title: 50
# Comment: Sokoban2 #39.

levels["50X"] = """
------############
-----##..----#---#
----##..*-$----$-#
---##..*.#-#-#-$##
---#..*.#-#-#-$--#
####...#--#----#-#
#--##-#----------#
#-@$-$-###--#---##
#-$---$---#-#---#
###$$---#-#-#-#-#
--#---$---#-#-#####
--#-$#-#####------#
--#$---#---#----#-#
--#--###---##-----#
--#--#------#----##
--####------######
"""
# Title: 50X
# Comment: Sokoban2 #39. In the XSokoban levelset the box at O4 moved to
# P4, the wall at O8 disappeared and the wall at P13 moved to Q13

levels["51X"] = """
-#########
-#-------#
-#-$-$$-$#
###-#--$-#
#.#---$$-##
#.###---$-#
#.#.-$-##-####
#...--$##-$--#
#...$---$----#
#..###$###-#@#
#..#-#-----###
####-#######
"""
# Title: 51X

levels["52X"] = """
-----------########
-----------#......#
---####----#......#
---#--#########...#
---#-$---$----#...#
---#--#-#-#-#-#---#
#####-#-#-#@#-#---#
#---#-###-###-##-##
#----$-#-$-$-$-#-#
#-$$$--$---#-----#
#---#-###$###$##-#
###-#--$---#-----#
-##-$--#-$-$-$-###
-#--#-###-###-##
-#-$----------#
-#--###########
-####
"""
# Title: 52X

levels["53X"] = """
####################
#----------------###
#-$#---$-##--$----##
#----$###----#-$$-##
#.###-----$-$-##--##
#...#--#--#----#$--#
#..##$$####-$--#---#
#...#------$-##--###
#...$--###--#----#-#
##..--$#--##---##@-#
###.#--------------#
####################
"""
# Title: 53X

levels["54X"] = """
####################
#---#----#---#---#@#
#-$------$---$---#-#
##-###..##-###-----#
#---#....#$#--$###-#
#-$-#....#--$--$-$-#
#---#....#-#-#-$-$-#
#---##..##---#$#---#
##$##----##--#--#$##
#---$--$-----#--#--#
#---#----#---#-----#
####################
"""
# Title: 54X

levels["55X"] = """
####################
#----@##------#---##
#----##----$----$-##
#--###....#-#-#--###
#---#....#-#-#-$---#
###-#...#--#-------#
##--##.#-----$---$-#
##--$-$-###--#-#-###
##-$-------#-#-$---#
####-$--$#-#-#-#-$-#
####---------#-#--##
####################
"""
# Title: 55X
# Comment: A remodel using the goal- and storing- area from Original 50.
# But the level is open so you can fill the goal from both sides and no
# longer need to push all the boxes through the goal area to solve the
# level

levels["56X"] = """
####################
#--#--##----#---@###
##----$----#-$###--#
##$#-$-##$#-$-$----#
#---$#----$------###
#-##---$-###--#....#
#-#-$#-#-#-#-#....##
#----$-$-#--#....###
##$-###--$-#....####
#--#-$--------######
#------#-#----######
####################
"""
# Title: 56X

levels["57X"] = """
####################
#@-----###---#--#--#
#-#-#--#--$--$-----#
#####-----#-$-$#$#-#
#.#..#----##$-$----#
#.....----$---#---##
#.....----###$##$###
#.#..#----$----#---#
#####-----#--#$--$-#
#####--#--$----$-$-#
#####--#--#--#--#--#
####################
"""
# Title: 57X

levels["58X"] = """
####################
##...---##-#----#--#
#....---------$-##-#
#....#-#-#$###$----#
#...#----#-------#-#
##.#--#$-#-----$##-#
#--#--#-$-$-###--$-#
#-----$--$-#--#-##-#
##-#-##-#$$#-$#--#-#
#--#---$-$-#------##
#----#-----#--#---@#
####################
"""
# Title: 58X

levels["59X"] = """
####################
#---#--#@#-##--#####
#-#-#--$----$--#####
#-#----######-$--###
#---#--#....#--$$--#
##$##$##....#------#
#------#....##$##$##
#--$$--#....#------#
#-$--$--#--#--###--#
#####--$---$----$--#
#####-#----#--#---##
####################
"""
# Title: 59X

levels["60X"] = """
####################
#-#-----#----------#
#-------$--##-###-##
#####--##---$--$---#
##..##--#-#-$-#-#--#
#....--$-----##$#-##
#....--$#####---#$##
##..#-#--#---#--$--#
###.#-#--$---$--#-@#
##--$--$-#---#--####
##-------###########
####################
"""
# Title: 60X

levels["61X"] = """
####################
#-----###..###-----#
#-$$--###..###--$@-#
#--#-##......#--$--#
#-----#......#--$--#
####--###..######$-#
#---$$$-#..#----#--#
#-$#---$--$--$$-#$-#
#--#--##-$--##--#--#
#-$----$-##-$----$-#
#--#--##----##--#--#
####################
"""
# Title: 61X

levels["62X"] = """
####################
#----#--#-#--#--#--#
#-@#-#-##-$---$---##
####-#----#--#-$---#
#----#-##-#$-##-##-#
#------$---$---$---#
#..###$$##-$##$-##-#
#..#.#--#-$---$-#--#
#....#-$$---##$-####
#....#--#####------#
#...###--------##--#
####################
"""
# Title: 62X

levels["63X"] = """
####################
#....#-------#--#--#
#....#-#-$--$------#
#....-##--$#-#-$#$-#
#...#---$---$#--$--#
#..####--#-$---$$--#
#------####-####-###
#--------#---#-----#
#-##---#---$-#-$-$-#
#-##----$-##-$--$--#
#-----@#-----#---#-#
####################
"""
# Title: 63X

levels["64X"] = """
####################
#....###-----------#
#....#####-#--#$#-##
#....###---#$--$---#
#....###----$--#$$##
##--####-$#--#$-$--#
##--####--$--$--#--#
#@--####$###$##-$--#
##--------#--#--$--#
##---###--#--$--####
########--#--#-----#
####################
"""
# Title: 64X

levels["65X"] = """
####################
#-----#-----@#...###
#-----#------##...##
#-#-#-##$##-##-....#
#---$-#---$$$--....#
###$###-$$--###-##.#
#-----$--#----#-####
#--$--#--###--#-#--#
##-#$##----$--$$---#
#---$-##---#--#-#--#
#-----#----#--#----#
####################
"""
# Title: 65X

levels["66X"] = """
####################
#-----#--#...#@----#
#-#-------....#----#
#--$--#---#....#---#
#-##$####-##....#--#
#-$---$--#--#...#--#
#-$$-#---#---#-$$--#
###--$$$#---$$--$--#
#-$--#--#----#-$#--#
#---$#--#-------$--#
#--#----#----#--#--#
####################
"""
# Title: 66X

levels["67X"] = """
####################
#####@###.##...##--#
#####$--..#...#----#
####----......#--$-#
###--$-#.....##-#-##
##--$$#-#####--$-$-#
##-$#-$----##--$$--#
##--#--#----#-$--$-#
##---$$-###-#$##---#
##-$#------$-$--$-##
###----#----#----###
####################
"""
# Title: 67X

levels["68X"] = """
####################
#@-----#---#-------#
##-###-##--####-#-##
#----#-#--$$-------#
#--#-#-#-$-#-$-##-##
#-----$-#--#$$-#---#
#--###--#------##-##
#..#.#-$-#--$-#----#
#..#.#--$-#-##-$$--#
#....##---$$--$--#-#
#.....##--------#--#
####################
"""
# Title: 68X

levels["69X"] = """
####################
#--#------#---#---##
#-$#-$-$-##...$--$-#
#--$--#-##....#-$--#
#-##-$-##....#---$-#
#-$----#....##-$---#
#-$##--#...#-------#
#---$$$##$##--###-##
#-#-#--#---#--#----#
#-$-#--$--##-------#
#----#----#@-------#
####################
"""
# Title: 69X

levels["70X"] = """
####################
#--#--#-#----#--#--#
#---$------$-$-----#
##-#--#$###$##--##-#
#---$-----$--#--$--#
#-###$##$#---#-$---#
#-#---$-$--######-$#
#-$--$$-$--#@#.#...#
#-#-----#--#-#.#...#
#-##########-#.....#
#------------#.....#
####################
"""
# Title: 70X

levels["71X"] = """
####################
#--#-----#--##----##
#-$#---$-#-----##--#
#-$--$--#..#-----$-#
#-$-$--#....#---#-##
#-$#--#......###-$-#
#---#--#....#--#$--#
#-$--####..#---#---#
##-$---##-#-#-$--$##
###-$----$#@$-$#---#
####---#-------#---#
####################
"""
# Title: 71X

levels["72X"] = """
####################
#------....#----####
#------....--------#
#-#-##########-----#
#-#$---#------###..#
#--$---#$$###---#..#
#-$-###-$---$---#..#
#-$-#---$-$-#--##..#
#--#--$$-#-$-##---##
#@##-$#--$--$-----##
##-------##---#--###
####################
"""
# Title: 72X

levels["73X"] = """
####################
#--------#---#@-#--#
#-$$--#$$#-#-#--##-#
#--#-$-$-#$$-#-----#
##-#--#--#-#-#--#--#
#---##-------#-----#
#---#-$-#---#---#--#
#-$-#$-#---#--$-#..#
##$-#--####----#...#
#--$----------#....#
#---#--#-----#.....#
####################
"""
# Title: 73X

levels["74X"] = """
####################
#-----#---#####----#
##-$--#---####--$--#
####-$$---#..#--#--#
#--$--$--##..####-##
#-$---###....---$$-#
#--#$#---....#-#-$-#
#-#--#-$-..###$#---#
#-#---$-#..#---##--#
#---$#--####---#-$##
#-#--#----@#------##
####################
"""
# Title: 74X

levels["75X"] = """
####################
#---#---#----#---#@#
#---$--$-----#-$-#-#
##$#-$###-#----$$#-#
#--#--#.###--#$-$--#
#--#$#....#--#-###-#
#-$--#.....##----#-#
##$--#.#....#$$-$--#
#--######..##-#--#-#
#--$---------$-###-#
#---#---#--------#-#
####################
"""
# Title: 75X

levels["76X"] = """
####################
#-#-#-#---#@##---#-#
#-------------$----#
#--##$#-#####-$-#-##
##----##.....#--#--#
##$##$#.....###$#$-#
#---#-##.....#--#-##
#--$----##..##--#--#
#-$-#---$---$--$$$-#
##-$--$#-#--#--$---#
#---##---#--#------#
####################
"""
# Title: 76X

levels["77X"] = """
####################
#----##---#----#---#
#--$--$-----##-$---#
##-#####--.######-##
-#-##--##....####-##
##-##$-###..##-----#
#------#...-.#-$-$-#
#-$-##-##-.-###-####
#-#-$----#.##-#-#---
#-$-$-#---.####-##--
#-#--##-#-##--#--##-
#######--$##$---$-#-
------##------$-#@#-
-------#--##-######-
-------#######----
"""
# Title: 77X
# Comment: This puzzle was substituted by the more uninterresting level
# 77SL in the collection "Scott Lindhurst-MacIntosh"

levels["77SL"] = """
######--#####
#----#--#---#
#-$--####-$-#
#-$------$--#
#--###@###$-#
##########-###
#..---##-----#
#..---##$----#
#..---##-$---#
#..---##-$---#
#..-----$-$--#
###--#########
--####
"""
# Title: 77SL
# Comment: This puzzle replaced the original 77 in the collection "Scott
# Lindhurst- MacIntosh"

levels["78X"] = """
-------###########
-------#---------#
-------#----$-$--#
######-#-$-#####-#
#----#####-$--##$#
#-------$-$------#
#----------##-##-#
#----##@#####-##-#
#----####---#-##-##
#....#------#-$---#
#....#------#-----#
######------#######
"""
# Title: 78X

levels["79X"] = """
#############
#-----------#
#-###-$$----#
#---#-$--$--#
#--$####$######
#-$-##--------#####
#--$$-$--------...#
###-##-$$#-----...#
--#-##---#-----...#
--#------#-----...#
--###@#############
----###
"""
# Title: 79X

levels["80X"] = """
--#################
###@##---------...#
#----#---------...#
#-$--#---------...#
#-$$-#---------...#
##-$-###$##########
-#-###--$-#
##---$--$-#
#--$-#--$-#
#-$--#----#
#--$-#----#
#----#----#
###########
"""
# Title: 80X

levels["81X"] = """
--------------#####
-----##########---#
-----#--------#---#
-----#--$-$----$$-#
-----#-#####-##-$-#
-----#$$---#$##-$-#
-----#-###-#-##$--#
######-###-$-$----#
#....--------##---#
#....--------######
#....--------#
###########@##
----------###
"""
# Title: 81X

levels["82X"] = """
----######
-####----#
-#----##-#
-#-$-----#
###-####-########
#--$---$-##--...#
#---$$-$$----...#
#----$--$##--...#
##@##-##-##--...#
-###--$--########
-#---$$--#
-#----#--#
-#########
"""
# Title: 82X

levels["83X"] = """
#######-#########
#-----#-#---##--#
#-###-#-#---$---#
#-#-$-###---$---#
#---$$------##$-#
#----####---##--#
#@############-##
###..----#####$-#
--#..----####---#
--#..-------$$--#
--#..----####-$-#
--#..----#--#---#
--########--#####
"""
# Title: 83X

levels["84X"] = """
#######
#-----##########
#-----#----#--##
#-$---#---$-$--#
#--$--#--$-##--#
#-$$--##$-$----#
##-#--##-#######
##-#--##----...#
#--#$-------...#
#---$$------...#
#-----##@#--...#
################
"""
# Title: 84X

levels["85X"] = """
############
#------#---##
#-$--$---#--######
####--#####------#
-#..--#-----####-#
-#.####--####----#
-#....----#--$-####
-#-...#---#-$$$#--##
###.####-##--$@$---#
#-----#####-$-#----#
#-#.#-$------$###$-#
#-#.########--#--$-#
#-#..--------##--$-#
#-#-#######-$-#-#--#
#---#-----#-------##
#####-----##########
"""
# Title: 85X

levels["86X"] = """
################
#-------#@-#---#
#-#-#-#-#-$--$$#
#-#...#-#$$$---#
#--...#-#-$--$$##
#-##.##-#-##----#
#-#...-----$----#
#-##-###--#######
#----#-####
######
"""
# Title: 86X

levels["87X"] = """
----#####
-####---##-#####
-#--$----###---#
-#-$@$-$----$--#
-#-#$########-##
-#-#--$--#-----#
-#-#-$-$-#-#---#
##-#--$#-#-#####
#--##----#-----#
#----$-#-###---#
#####-##--#....#
#----$-----....#
#---------#....#
################
"""
# Title: 87X

levels["88X"] = """
#############
#........####
#...####-#--#####
#...#--###----$-#
#...$$-----$-$--#
#--.#--$-$#-$--##
#...#-#$#---$--#
#.#-#-$---$----#
#.--#$###$####$#
##--#---$-$----#
-#--#--$@$--#--#
-#--#-####-$--$#
-#--#----###---#
-#--#-$$-#-#####
-#--#----#
-#########
"""
# Title: 88X

levels["89X"] = """
-##################
-#---$-------...#.##
-#-------####.....-#
-#-#######--#.....-#
-#-#----$-$-##....##
-#-#--$-#-#-###...#
-#-#-$@$-$--#####-#
##-#--$--$-$$---$-#
#--#$#-$#---#-$##-#
#-##----##-##-$-#-#
#-#-$#-$-$--#-----#
#-#---------#######
#-########$##---#
#--------#--$---#
########----#####
-------###--#
---------####
"""
# Title: 89X

levels["90X"] = """
####################
#..#----#----------#
#.$--$--#$$--$##-$##
#.$#--###--##-##---#
#--#-$-#--$$---$---#
#-###--#-#--#$--####
#--##-#-$---#@-#---#
#-$----$--##.##--$-#
#--#-$#-$#-$-----###
#--#--#--#---###---#
#--########-#------#
#-----------#--#.#.#
##$########$#---...#
#----.*--#----##.#.#
#-.*...*---$--.....#
####################
"""
# Title: 90X

for title in sorted(levels.keys()):
    name = "sokoban" + title
    problem = slide_puzzle_gen.problem_sokoban(name, levels[title])
    print(problem, file=open("sokoban/" + name + '-problem.pddl', 'w'))