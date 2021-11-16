#!/usr/bin/env python3
import slide_puzzle_gen

levels = {}

# Level 1
# ;Author: D Holland
# ;Title: Spade
# 'Spade'
levels["01"] = """
      ####
    ###  ####
  ### $ $   #
  #   #..#$ #
  # $$#*.#  #
  #   ....$ #
 ## # .#.#  #
 # $##$#.#$ #
 # @$    .$ #
 ##  #  ##  #
  ###########
"""

# Level 2
# ;Author: D Holland and sokgen
# ;Title: ninevah
# 'Ninevah'
levels["02"] = """
   #####
####   #
#@$  # #
# $$$  #
##.#.  #
#  ..# #
#  #.* #
# $.$ ##
###   #
  #####
"""

# Level 3
# ;Author: D Holland and sokgen
# ;Title: CrissCross
# 'CrissCross'
levels["03"] = """
   #####
  ##  @####
  #  #$$  #
###.#   # #
#  $#.#$  #
#   ...  ##
###$#.#$ #
  #     ##
  ###   #
    #####
"""

# Level 4
# ;Author: D Holland
# ;Title: Carousel
# 'Carousel'
levels["04"] = """
   ####  #####
####  ####   #
# $  $     $ ####
# #   # ### #   #
#  $   $ # $$ $ #
###  ## $@$     ##
  #$ ##  # $$ $$ #
  #    $  ## ##  #
 ### #$##  ...# ##
 #  ..*.*..##.# #
 # #..*.....*.# #
 #   ########   #
 #####      #####
"""

# Level 5
# ;Author: D Holland
# ;Title: Pattern-oster
# 'Pattern-oster'
levels["05"] = """
  ####
  #  #
  #  # #######
  #  # #..   #
  # ####..##$###
  #  $ $.*     #
  # #$ #*.# $# #
###$#  #..#  # #
#   #$ #*.# $# #
# # #  $..#  # ##
# #$#$ #..$  #  #
#   #  #..#   # #
# #@# $#*.#$# # #
#  $#  #..#   # #
##   $ $ $ ###  #
 ####   #      ##
    ############
"""

# Level 6
# ;Author: D Holland
# ;Title: Saturnine
# 'Saturnine'
levels["06"] = """
##########
#   ##   ######
# $   $ $ #   #
# $ #  .$ #   #
###  ##.#  $ ##
# ##$##.###. #
#   *.......$#
#    ##.##   #
##$####.######
#  $ # . #   #
#  #  **$    #
#  $ # @ # $ #
# $   #####  #
###   #   ####
  #####
"""

# Level 7
# ;Author: D Holland and sokgen
# ;Title: briefcase alt 23
# 'briefcase alt 23'
levels["07"] = """
  #####
###   #
# $*@.###
# # *$  #
# #. .# #
# #$* $ #
#    .###
###   #
  #####
"""

# Level 8
# ;Author: D Holland
# ;Title: Salamandar v3
# 'Salamander v3'
levels["08"] = """
      #####
#######   ###
#   ## $ $  #
# # ##    # #
# #..$ $ ## #
#  .$# $#   #
###..# $ @$ #
  #**# $ # ##
  #..#   # #
  #..##### ##
  #.*#   $  #
  #..# $    #
  ##.### #####
  # $      $ #
  #   ####   #
  #####  #####
"""

# Level 9
# ;Author: D Holland
# ;Title: Abstract
# 'Abstract'

# levels["09"] = """
# --####
# -#----#
# -#.-C-#
# #-.-c--#
# #-#CC#-#
# #--CSC-#
# -#-cc-#
# -#----#
# --####
# """

levels["09"] = """
 ######
 #    #
##. * ##
# . $  #
# #**# #
#  *+* #
## $$ ##
 #    #
 ######
"""

# Level 10
# ;Author: D Holland
# ;Title: Storm (in a teacup) v6
# 'Storm (in a teacup) v6'
levels["10"] = """
####
#  #######
#        #
#  ###$# #
##.# # . #
 # # #$* #
 #.### + #
 # $ #$* #
 # #   . #
##.####* #
#  $ $ * #
#       ##
#########
"""

for title in sorted(levels.keys()):
    name = "sokoban-dh1-" + title
    problem = slide_puzzle_gen.problem_sokoban(name, levels[title])
    print(problem, file=open("sokoban/" + name + '-problem.pddl', 'w'))
