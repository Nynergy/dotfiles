#!/bin/bash
CURRENT_WALLPAPER=/home/benjamin/Pictures/Wallpaper/wallpaper.jpg

OUTPUT_DEVICE_1=$(xrandr -q | awk '/ connected/ {print $1}' | head -n 1)
OUTPUT_DEVICE_2=$(xrandr -q | awk '/ connected/ {print $1}' | tail -n 1)

xrandr --output $OUTPUT_DEVICE_1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output $OUTPUT_DEVICE_2 --mode 1920x1080 --pos 0x0 --rotate normal

pkill $STATUSBAR
TOGGLE_STATE=$(cat ~/.toggle-util/gaps-toggle)
[ "$TOGGLE_STATE" == "On" ] && marquee apparition
[ "$TOGGLE_STATE" == "Off" ] && marquee apparition-no-gaps

feh --bg-fill $CURRENT_WALLPAPER
