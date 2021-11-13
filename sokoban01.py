import slide_puzzle_gen

desc = """
    WWWWW
    W   W
    WC  W
  WWW  CWW
  W  C C W
WWW W WW W   WWWWWW
W   W WW WWWWW  XXW
W C  C          XXW
WWWWW WWW WSWW  XXW
    W     WWWWWWWWW
    WWWWWWW
"""

name="sokoban01"
problem = slide_puzzle_gen.problem_sokoban(name,desc)
print(problem, file=open(name+'-problem.pddl', 'w'))