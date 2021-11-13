#!/bin/bash

for f in solve-downward/khunpan/khunpan-exercise[0-9][0-9][0-9].txt
do
  fn=${f##*/}
  n=${fn%.txt}
  echo Validate "khunpan/${n}-"{domain,problem}.pddl "$f"
  Validate "khunpan/${n}-"{domain,problem}.pddl "$f"
done
