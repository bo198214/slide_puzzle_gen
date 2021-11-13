#!/bin/bash -x

#For obtaining the docker image see https://hub.docker.com/r/lapkt/lapkt-public/

name=$1
problem_name=${2:-$name}
mkdir -p solve-lapkt

domain_file=/pddl/${name}-domain.pddl
problem_file=/pddl/${problem_name}-problem.pddl
plan_file=/pddl/solve-lapkt/${problem_name}.txt
log_file="$(pwd)"/solve-lapkt/${problem_name}.log

docker run -it -v "$(pwd)":/pddl lapkt/lapkt-public ./siw-then-bfsf\
  --domain $domain_file --problem $problem_file --output $plan_file | tee $log_file