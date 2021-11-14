#!/bin/bash -e

for problem in sokoban/sokoban[0-9][0-9]-problem.pddl
do
  n=${problem%-problem.pddl}
  echo Parser sokoban-domain.pddl $problem
  Parser sokoban-domain.pddl $problem | grep 'Error\|Warning'
  found_plan=
  for solver in solve-*
  do
    if ! [ -d "$solver" ]; then continue; fi
    plan=$solver/$n.txt
    if [ -f $plan ]
    then
	  echo Validate sokoban-domain.pddl "$problem" "$plan"
	  Validate sokoban-domain.pddl "$problem" "$plan"
	  found_plan=1
	fi
  done
  if [ -z "$found_plan" ]
  then
	echo Validate sokoban-domain.pddl "$problem"
	Validate sokoban-domain.pddl "$problem"
  fi  
done
