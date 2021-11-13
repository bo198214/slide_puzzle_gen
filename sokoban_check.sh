#!/bin/bash

for f in solve-downward/sokoban/sokoban[0-9][0-9].txt
do
  fn=${f##*/}
  n=${fn%.txt}
  echo Validate sokoban-domain.pddl "sokoban/${n}-problem.pddl" "$f"
  Validate sokoban-domain.pddl "sokoban/${n}-problem.pddl" "$f"
done
