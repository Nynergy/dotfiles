#!/bin/bash

normal="$(grep color7 ~/.Xresources | awk '{print $2}')"
filled="$(grep color4 ~/.Xresources | awk '{print $2}')"

fullspace="$(df -h | awk /sda2/ | awk '{print $2}' | sed 's/G//g')"
freespace="$(df -h | awk /sda2/ | awk '{print $4}' | sed 's/G//g')"

percentage="$((($freespace * 100) / $fullspace))"

if [ "$percentage" -gt 100 ]
then
	percentage=100
fi

if [ "$percentage" -lt 0 ]
then
	percentage=0
fi

blocks="$((($percentage / 10) - 1))";

bar="%{F$filled}"

for ((i=0; i<$blocks; i++))
do
	bar="$bar-"
done

bar="$bar%{F$normal}"

if [ $percentage -ne 0 ]
then
	bar="$bar|"
fi

space="$((9 - $blocks))";
if [ $space -eq 10 ]
then
	if [ $percentage -ne 0 ]
	then
		space=9
	fi
fi

for ((j=0; j<$space; j++))
do
	bar="$bar-"
done

echo "$bar"
