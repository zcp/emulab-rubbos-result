#!/bin/bash
#deploy a spark appliation to kubernetes
#./kill_bash.sh script_name

pids=($(ps -ef | grep $1 | awk 'NR>0 { printf sep $2; sep=" "}')) 
echo "pid of kill bash script" $$
echo "${pids[*]}"

for pid in "${pids[@]}"; do
   if [ $$ != $pid ]; then
      echo "kill a pid" $pid
      kill -9 $pid
   fi
done




