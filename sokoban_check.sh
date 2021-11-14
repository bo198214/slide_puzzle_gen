#!/bin/bash -e

for problem in sokoban/sokoban[0-9][0-9]-problem.pddl
do
  n=${problem%-problem.pddl}
  plan=solve-downward/$n.txt
  if [ -f $plan ]
  then
	echo Validate sokoban-domain.pddl "$problem" "$plan"
	Validate sokoban-domain.pddl "$problem" "$plan"
  else
	echo Validate sokoban-domain.pddl "$problem"
	Validate sokoban-domain.pddl "$problem"
  fi  
done
