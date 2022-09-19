#!/bin/bash

cd ~
ishiiruka-nogui -e "/home/benjamin/Games/Gamecube/Twilight Princess.nkit.iso" &

sleep 3

cd /home/benjamin/Programming/Python/midna/
./midna &

sleep 0.5

i3-msg floating disable && i3-msg split v
feh corner_images.png &

sleep 0.5

i3-msg focus left
i3-msg move window to right
i3-msg move window to right
