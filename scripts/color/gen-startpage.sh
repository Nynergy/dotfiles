#!/bin/bash

# A script for recoloring my custom startpage

getColors() {
	BACKGROUND_COLOR="$(grep '\[[0-9][0-9]\]' ~/.Xresources | awk '{print $2}' | sed 's/\[[0-9][0-9]\]//')"
	FOREGROUND_COLOR="$(grep color7 ~/.Xresources | awk '{print $2}')"
	ACCENT_COLOR_ONE="$(grep color1 ~/.Xresources | awk '{print $2}' | head -n 1)"
	ACCENT_COLOR_TWO="$(grep color2 ~/.Xresources | awk '{print $2}')"
	ACCENT_COLOR_THREE="$(grep color4 ~/.Xresources | awk '{print $2}')"
	ACCENT_COLOR_FOUR="$(grep color3 ~/.Xresources | awk '{print $2}')"
}

setColors() {
	sed -i "s/bg-color: #[0-9a-z][0-9a-z]*/bg-color: $BACKGROUND_COLOR/" ~/Programming/Webdev/Startpage/startpage.scss
	sed -i "s/text-color: #[0-9a-z][0-9a-z]*/text-color: $FOREGROUND_COLOR/" ~/Programming/Webdev/Startpage/startpage.scss
	sed -i "s/highlight-color-one: #[0-9a-z][0-9a-z]*/highlight-color-one: $ACCENT_COLOR_ONE/" ~/Programming/Webdev/Startpage/startpage.scss
	sed -i "s/highlight-color-two: #[0-9a-z][0-9a-z]*/highlight-color-two: $ACCENT_COLOR_TWO/" ~/Programming/Webdev/Startpage/startpage.scss
	sed -i "s/highlight-color-three: #[0-9a-z][0-9a-z]*/highlight-color-three: $ACCENT_COLOR_THREE/" ~/Programming/Webdev/Startpage/startpage.scss
	sed -i "s/highlight-color-four: #[0-9a-z][0-9a-z]*/highlight-color-four: $ACCENT_COLOR_FOUR/" ~/Programming/Webdev/Startpage/startpage.scss
}

getColors
setColors

sass ~/Programming/Webdev/Startpage/startpage.scss > ~/Programming/Webdev/Startpage/startpage.css
