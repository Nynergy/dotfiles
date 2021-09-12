#!/bin/bash

# A script for recoloring dunst notifications

getColors() {
	BACKGROUND_COLOR="$(grep color0 ~/.Xresources | awk '{print $2}')"
	FOREGROUND_COLOR="$(grep color7 ~/.Xresources | awk '{print $2}')"
	ACCENT_COLOR="$(grep color2 ~/.Xresources | awk '{print $2}' | head -n 1)"
}

setColors() {
	sed -i "s/background = \"#[0-9a-z][0-9a-z]*\"/background = \"$BACKGROUND_COLOR\"/" ~/.config/dunst/dunstrc
	sed -i "s/foreground = \"#[0-9a-z][0-9a-z]*\"/foreground = \"$FOREGROUND_COLOR\"/" ~/.config/dunst/dunstrc
	sed -i "s/frame_color = \"#[0-9a-z][0-9a-z]*\"/frame_color = \"$ACCENT_COLOR\"/" ~/.config/dunst/dunstrc
}

getColors
setColors
