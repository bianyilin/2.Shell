#!/bin/bash
day=0
c=1
star=$1
end=$[ $1+$2-1 ]
for i in `seq $star $end`;do
if [[ $[$i%4] -eq 0 ]] && [[ $[$i%100] -ne 0 ]] || [[ $[$i%400] -eq 0 ]]; then 
    	day=$[366+$day]
    else
        day=$[365+$day]
    fi

done
echo $day
