#!/bin/bash -e

for problem in sokoban/sokoban[0-9][0-9]-problem.pddl sokoban/sokoban-dh1-[0-9][0-9]-problem.pddl
do
  n=${problem%-problem.pddl}
  echo Parser sokoban-domain.pddl $problem
  Parser sokoban-domain.pddl $problem | grep 'Error\|Warning'
  found_plan=
  for solver in solve-*
  do
    if ! [ -d "$solver" ]; then continue; fi
    for plan in $solver/$n.txt $solver/$n.txt.*
    do
      if [ -f $plan ]
      then
        echo Validate sokoban-domain.pddl "$problem" "$plan"
        Validate sokoban-domain.pddl "$problem" "$plan"
        found_plan=1
      fi
    done
  done
  if [ -z "$found_plan" ]
  then
	echo Validate sokoban-domain.pddl "$problem"
	Validate sokoban-domain.pddl "$problem"
  fi  
done
