
#!/bin/bash
#usage: ./collect.sh cpu_file disk_file net_file

echo $1 $2 $3 $4

collectl_cpu_filename=$1-"`hostname`"
collectl_mem_filename=$2-"`hostname`"
collectl_disk_filename=$3-"`hostname`"
collectl_net_filename=$4-"`hostname`"

# launch collectl
nice -n -1 collectl -i 0.1 -F30 -sC -oTm > ${collectl_cpu_filename} &
nice -n -1 collectl -i 0.1 -F30 -sM -oTm > ${collectl_mem_filename} &
nice -n -1 collectl -i 0.1 -F30 -sD -oTm > ${collectl_disk_filename} &
nice -n -1 collectl -i 0.1 -F30 -sN -oTm > ${collectl_net_filename} &
collectl_pid=$!



