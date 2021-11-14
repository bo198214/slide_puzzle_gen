#!/bin/bash -e

for problem in khunpan/khunpan-exercise[0-9][0-9][0-9]-problem.pddl
do
  n=${problem%-problem.pddl}
  domain=${n}-domain.pddl
  plan=solve-downward/$n.txt
  if [ -f $plan ]
  then
	echo Validate $domain $problem $plan
	Validate $domain $problem $plan
  else
	echo Validate $domain $problem
	Validate $domain $problem
  fi  
done
