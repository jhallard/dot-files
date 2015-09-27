#!/bin/bash

# jhallard, September 2015
# https://github.com/jhallard

pids=$(ps -ef | grep -i lemonbar | awk '{print $2}')

if [[ -z "$pids" ]]; then
    exit 0
fi

pids=$(echo $pids | sed ':a;N;$!ba;s/\n/ /g')

IFS='\n' read array <<< "${pids}"
for pid in $array 
do
    if [[ -z "${pid}" ]]; then
        echo ""
    else
        sudo kill ${pid}
    fi
done
