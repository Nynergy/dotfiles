#!/bin/bash

DISK_NAME=nvme0n1p8

NORMAL=`grep color7 /home/benjamin/.Xresources | awk '{print $2}'`
FILLED=`grep color4 /home/benjamin/.Xresources | awk '{print $2}'`

PERCENTAGE=`df -h | awk -v disk="$DISK_NAME" '$0 ~ disk {print $5}' | sed 's/%//g'`

BLOCKS=$(($PERCENTAGE / 10)) # This truncates the resulting float to an integer
if [ $BLOCKS -eq 10 ]
then
    BLOCKS=9
fi

BAR="%{F$FILLED}"

for (( i = 0; i < $BLOCKS; i++ )); {
    BAR="$BAR-"
}

BAR="$BAR%{F$NORMAL}|"

for (( j = 0; j < 9 - $BLOCKS; j++ )); {
    BAR="$BAR-"
}

echo "$BAR"
