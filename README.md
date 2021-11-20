# Slide Puzzle & Sokoban PDDL generator in Python

The initial idea for this slide puzzle generator came from dealing with Khun Pan - an ancient one person game from Thailand. 
This game is very intricate, so really worth solving it with a planner.
So the outcome is this PDDL generator which can be used for any slide puzzles (e.g. also the 15puzzle, or 8puzzle).
Also a Sokoban PDDL creator is included.

The library to use is the slide_puzzle_gen.py.
It contains the function `domain_problem` and `sokoban_problem`.

## Slide Puzzle generator
```
import slide_puzzle_gen

init_state = [
    [ None, 8, 7],
    [ 6, 5, 4],
    [ 3, 2, 1]
]

target_state = {
    (1,3): 1, (2,3): 2, (3,3): 3,
    (1,2): 4, (2,2): 5, (3,2): 6,
    (1,1): 7, (2,1): 8, (3,1): None
}

domain_name="n8puzzle01-gen"
problem_name="n8puzzle01-gen"
domain,problem=slide_puzzle_gen.domain_problem(domain_name,problem_name,init_state,target_state)

print(domain, file=open(domain_name + '-domain.pddl', 'w'))
print(problem, file=open(problem_name + '-problem.pddl', 'w'))
```

The elements of the init_state are the tiles. As some PDDL parsers do not allow numbers to be object names,
the generator would automatically translate it into tile\<number\>.
But you can also specify strings for your tile names directly.

The target state has a different format and defines for each position which tile is to be exepected.
As you have guessed, None is used for the empty space.
The usage of "n8puzzle..." instead of "8puzzle..." is due to the restriction of some PDDL parsers
that domain or problem names can not start with a number.

In the above example all tiles are of the same type, not so in Khun Pan:
```
init_state = [
    ["tv1", "tsq", "tsq", "tv2"],
    ["tv1", "tsq", "tsq", "tv2"],
    [None, "th", "th", None],
    ["tv3", "to1", "to2", "tv4"],
    ["tv3", "to3", "to4", "tv4"]
]

target_state = { (2, 2): "tsq", (3, 2): "tsq", (2, 1): "tsq", (3, 1): "tsq"}
```
Here for example "tsq" is a 2x2 tile and "tv1" is a 1x2 tile.
You can specify arbitrary tile shapes, even non-connected ones.
You also see that the target state does not to be complete,
but here we just require the tile "tsq" to occupy the middle of the lowest two rows.

If you specify an array of tiles instead of a single tile it is considered as "or", i.e.
`(1,1): [ 'to1' , 'to2' ]` would mean that "to1" *or* "to2" is expected to be on (1,1) for example.

## Sokoban Generator

For sokoban we use a fixed domain, which is contained in the file `sokoban-domain.pddl`.
A typical usage could look like this:
```
import slide_puzzle_gen

level01 = """
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
name = "sokoban01"
problem = slide_puzzle_gen.problem_sokoban(name, level01)
print(problem, file=open("sokoban/" + name + '-problem.pddl', 'w'))
```

The characters have the following meaning: 
* `#` is wall
* `$` is a crate,
* `*` is a crate placed on a goal tile
* `@` is the sokoban itself
* `+` is the sokoban standing on a goal tile
* `.` is an unoccupied crate goal tile
* `-` or ` ` or `_` is empty floor
* `o` sokoban goal tile (needed for mazes)

Just as a side note: You can use the sokoban generator also for creating mazes.
A maze is a sokoban game just without crates (and having a sokoban goal tile).
You can find an example of a maze in `gen-test.py`.

## Interactive plan replay or solution finding (needs Julia programming language installed)
There are two tools included which allow to (re)play the game in ASCII graphics.

`julia --project=. solve-manual-sokoban.jl <sokoban problem file> [<plan file>] [replay]`

`julia --project=. solve-manual-slide-puzzle.jl --help`

These Julia programs use ncurses, so if they crash your terminal may be left cluttered.
In this case you can do `stty sane`.

You can record your own session in the provided plan file. 
If the plan file (exists and) contains actions they will be executed before it starts
to record your own moves. Start the programs without arguments will give you a short help message.
