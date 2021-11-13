import slide_puzzle_gen

desc = """
    #####
    #   #
    #*  #
  ###  *##
  #  * * #
### # ## #   ######
#   # ## #####  ..#
# *  *          ..#
##### ### #@##  ..#
    #     #########
    #######
"""

name="sokoban01"
problem = slide_puzzle_gen.problem_sokoban(name,desc)
print(problem, file=open(name+'-problem.pddl', 'w'))