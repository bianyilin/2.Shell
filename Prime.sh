#!/bin/bash 
#线性筛

declare -a prime
sum=0
function init() {
    for i in `seq 1 1000`;do
        eval $1[$i]=0
    done
}

init prime

for ((i=2; i<1000; i++));do
    if [[ ${prime[$i]} -eq 0 ]];then
        prime[0]=$[ ${prime[0]}+1 ]
        prime[ ${prime[0]} ]=$i
        sum=$[ $i+$sum ]
    fi
    for ((j=1; j<=prime[0]; j++));do
        if [[ $[ ${prime[$j]} * $i ] -ge 1000 ]];then    #超出界限跳出
            break
        fi
            prime[ ${prime[$j]}*$i ]=1                      
        if [[  $[ $i % ${prime[$j]} ]  -eq 0 ]];then
            break;
        fi

    done
done
for i in `seq 1 ${prime[0]}`;do
    echo ${prime[$i]}
done
echo $sum
