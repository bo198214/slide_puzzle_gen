#!/bin/bash -x

#For obtaining the docker image see https://hub.docker.com/r/lapkt/lapkt-public/


if [ -f "$1" ]
then
  problem_name=${2%.pddl}
  problem_name=${problem_name%-problem}
  domain_file="/pddl/$1"
  problem_file="/pddl/$2"
  plan_file=/pddl/solve-lapkt/${problem_name}.txt
  log_file="$(pwd)"/solve-lapkt/${problem_name}.log
else
  domain_file=/pddl/${1}-domain.pddl
  problem_file=/pddl/${1}-problem.pddl
  plan_file=/pddl/solve-lapkt/${1}.txt
  log_file="$(pwd)"/solve-lapkt/${1}.log
fi

mkdir -p "$(dirname "$log_file")"

docker run -it -v "$(pwd)":/pddl lapkt/lapkt-public ./siw-then-bfsf\
  --domain $domain_file --problem $problem_file --output $plan_file | tee $log_file