#!/bin/bash

# A script that recolors Zathura based on Xresources colors

# NOTE: These variables will need to be replaced manually when the font changes
FONT="Terminus"
FONT_SIZE=10

getColors() {
	DARK_COLOR="$(grep '\[[0-9][0-9]\]' ~/.Xresources | awk '{print $2}' | sed 's/\[[0-9][0-9]\]//')"
	LIGHT_COLOR="$(grep color7 ~/.Xresources | awk '{print $2}')"
	STATUS_COLOR="$(grep color2 ~/.Xresources | awk '{print $2}')"
	COMPLETION_COLOR="$(grep color1 ~/.Xresources | awk '{print $2}' | head -n 1)"
}

setColors() {
	echo "set default-fg \\$DARK_COLOR" > .config/zathura/zathurarc
	echo "set default-bg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set statusbar-fg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set statusbar-bg \\$STATUS_COLOR" >> .config/zathura/zathurarc
	echo "set inputbar-fg \\$STATUS_COLOR" >> .config/zathura/zathurarc
	echo "set inputbar-bg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set completion-fg \\$LIGHT_COLOR" >> .config/zathura/zathurarc
	echo "set completion-bg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set completion-group-fg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set completion-group-bg \\$COMPLETION_COLOR" >> .config/zathura/zathurarc
	echo "set completion-highlight-fg \\$DARK_COLOR" >> .config/zathura/zathurarc
	echo "set completion-highlight-bg \\$LIGHT_COLOR" >> .config/zathura/zathurarc

	echo >> .config/zathura/zathurarc

	echo "set recolor true" >> .config/zathura/zathurarc

	echo >> .config/zathura/zathurarc

	echo "set recolor-darkcolor \\$LIGHT_COLOR" >> .config/zathura/zathurarc
	echo "set recolor-lightcolor \\$DARK_COLOR" >> .config/zathura/zathurarc

	echo >> .config/zathura/zathurarc

	echo "set font \"$FONT $FONT_SIZE\"" >> .config/zathura/zathurarc

	echo >> .config/zathura/zathurarc

	echo "set scroll-step 300" >> .config/zathura/zathurarc
}

getColors
setColors
