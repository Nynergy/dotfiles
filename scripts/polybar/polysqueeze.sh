#!/bin/bash

ON=`grep color6 /home/benjamin/.Xresources | awk '{print $2}'`
OFF=`grep color5: /home/benjamin/.Xresources | awk '{print $2}'`

ps -e | grep squeezelite > /dev/null

if [[ $? -eq 0 ]];
then
    echo "%{F$ON}ON"
else
    echo "%{F$OFF}OFF"
fi
