#!/bin/bash
while true
do
    sleep 2700
    export DISPLAY=:0.0 && notify-send ["该休息一下啦"] "动一动！"
    sleep 300
    export DISPLAY=:0.0 && notify-send ["休息时间到啦"] "继续学习吧！"
done&

while true
do 
    if [[ `date +"%M"` -eq 0 ]]; then
    export DISPLAY=:0.0 && notify-send `date +%H:%M`
    fi
done&
