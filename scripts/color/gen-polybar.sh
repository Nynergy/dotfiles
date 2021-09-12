#!/bin/bash

# A script for recoloring my polybar config

getColors() {
	BACKGROUND_COLOR="$(grep '\[[0-9][0-9]\]' ~/.Xresources | awk '{print $2}' | sed 's/\[[0-9][0-9]\]#//')"
	ACTIVE_COLOR="$(grep color1 ~/.Xresources | awk '{print $2}' | head -n 1 | sed 's/#//')"
	SIRENBAR_COLOR="$(grep color5 ~/.Xresources | awk '{print $2}')"
	FOREGROUND_COLOR="$(grep color7 ~/.Xresources | awk '{print $2}')"
}

setColors() {
	sed -i "s/black = #c0[0-9a-z][0-9a-z]*/black = #c0$BACKGROUND_COLOR/" ~/.config/polybar/config
	sed -i "s/active = #c0[0-9a-z][0-9a-z]*/active = #c0$ACTIVE_COLOR/" ~/.config/polybar/config
	sed -i "s/invisible = #00[0-9a-z][0-9a-z]*/invisible = #00$BACKGROUND_COLOR/" ~/.config/polybar/config
	sed -i "s/PLAYBAR_COLOR = \"#[0-9a-f][0-9a-f]*\"/PLAYBAR_COLOR = \"$SIRENBAR_COLOR\"/" ~/.local/bin/sirenbar.py
	sed -i "s/NORMAL_COLOR = \"#[0-9a-f][0-9a-f]*\"/NORMAL_COLOR = \"$NORMAL_COLOR\"/" ~/.local/bin/sirenbar.py
}

getColors
setColors
