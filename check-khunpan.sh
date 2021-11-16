#!/bin/bash -e

for problem in  khunpan/khunpan-droid[0-9][0-9]-problem.pddl khunpan/khunpan-exercise[0-9][0-9][0-9]-problem.pddl
do
  n=${problem%-problem.pddl}
 
  domain=${n}-domain.pddl
  plan=solve-downward/$n.txt

  echo Parser $domain $problem
  Parser $domain $problem | grep 'Error\|Warning'

  found_plan=
  for solver in solve-*
  do
    if ! [ -d "$solver" ]; then continue; fi
    for plan in $solver/$n.txt $solver/$n.txt.*
    do
      if [ -f $plan ]
      then
        echo Validate $domain $problem $plan
        Validate $domain $problem $plan
        found_plan=1
      fi
    done
  done
  if [ -z "$found_plan" ]
  then
    echo Validate $domain $problem
    Validate $domain $problem
  fi
done
