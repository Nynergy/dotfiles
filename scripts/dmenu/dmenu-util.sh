#!/bin/bash

# A general system utility script that uses dmenu

FONT="xos4Terminus-10"
BACKGROUND="$(grep color0 ~/.Xresources | awk '{print $2}')"
FOREGROUND="$(grep color5 ~/.Xresources | awk '{print $2}')"
CONFIRM_FOREGROUND="$(grep color1 ~/.Xresources | awk '{print $2}' | head -n 1)"

DMENU_SETTINGS="-nb $BACKGROUND -nf $FOREGROUND -sb $FOREGROUND -sf $BACKGROUND -fn $FONT"

COMPOSITOR=compton
NOTIFICATION=dunst
STATUSBAR=polybar
SCREENSHOT="scrot -d 1"

GAPS=$(grep "gaps inner" ~/.config/i3/config | awk '{print $3}')

Confirm() {
	CONFIRM="$(echo -e 'No\nYes' | dmenu -c -l 2 -bw 2 -nb $BACKGROUND -nf $CONFIRM_FOREGROUND -sb $CONFIRM_FOREGROUND -sf $BACKGROUND -fn $FONT -i -p 'Are you sure?')";
}

CHOICES="Main Workspace\nTake Screenshot\nChange Wallpaper\nChange and Set Wallpaper\nRegenerate Colors\nSet Colorscheme\nSave Colorscheme\n--------------------\nToggle Compositor\nToggle Notifications\nToggle Gaps\nToggle Status Bar\nToggle Light/Dark Mode\n--------------------\nLock Screen\nExit i3"
CHOICE="$(echo -e $CHOICES | dmenu -c -l 20 -bw 2 $DMENU_SETTINGS -i -p 'System:')"

case $CHOICE in
	"Main Workspace")
		python3 ~/Programming/Python/workspace.py ;;
	"Take Screenshot")
		$SCREENSHOT;
		notify-send "Screenshot Taken" ;;
	# NOTE: If user marks more than one wallpaper, only the first one will be chosen
	"Change Wallpaper") 
		WALLPAPER="$(sxiv -b -t -f -Z -o ~/Pictures/Aesthetic | head -n 1)";
		feh --bg-fill "$WALLPAPER" ;;
	"Change and Set Wallpaper")
		Confirm;
		[ $CONFIRM == "Yes" ] && WALLPAPER="$(sxiv -b -t -f -Z -o ~/Pictures/Aesthetic | head -n 1)" && \
			cp "$WALLPAPER" ~/Pictures/Wallpaper/wallpaper.jpg && \
			feh --bg-fill ~/Pictures/Wallpaper/wallpaper.jpg ;;
	"Regenerate Colors")
		master-recolor.sh ;;
	"Set Colorscheme")
		colorpicker.sh ;;
	"Save Colorscheme")
		colorsaver.sh ;;
	"Toggle Compositor")
		pkill $COMPOSITOR;
		COMPFLAG=$?;
		[ $COMPFLAG -eq 0 ] || $COMPOSITOR & ;;
	# With dunst, this really just resets the process, which is handy for reading a new dunstrc
	"Toggle Notifications")
		pkill $NOTIFICATION;
		NOTIFYFLAG=$?;
		[ $NOTIFYFLAG -eq 0 ] || $NOTIFICATION & ;;
	"Toggle Gaps")
		TOGGLE_STATE=$(cat ~/.toggle-util/gaps-toggle);
		[ $TOGGLE_STATE == "On" ] && i3-msg "gaps inner all set 0" && \
			start-polybar.sh apparition-no-gaps && \
			echo "Off" > ~/.toggle-util/gaps-toggle;
		[ $TOGGLE_STATE == "Off" ] && i3-msg "gaps inner all set $GAPS" && \
			start-polybar.sh apparition && \
			echo "On" > ~/.toggle-util/gaps-toggle;
		;;
	"Toggle Status Bar")
		pkill $STATUSBAR;
		BARFLAG=$?;
		TOGGLE_STATE=$(cat ~/.toggle-util/gaps-toggle);
		[ $BARFLAG -eq 1 ] && [ $TOGGLE_STATE == "On" ] && start-polybar.sh apparition;
		[ $BARFLAG -eq 1 ] && [ $TOGGLE_STATE == "Off" ] && start-polybar.sh apparition-no-gaps;
		;;
	"Toggle Light/Dark Mode")
		LIGHT="$(grep color7 ~/.Xresources | awk '{print $2}')";
		DARK="$(grep color0 ~/.Xresources | awk '{print $2}')";
		sed -i "s/$LIGHT/TEMP/g" ~/.Xresources;
		sed -i "s/$DARK/$LIGHT/g" ~/.Xresources;
		sed -i "s/TEMP/$DARK/g" ~/.Xresources;
		master-recolor.sh;
		;;
	"Lock Screen")
		i3lock -c $BACKGROUND ;;
	"Exit i3")
		Confirm;
		[ $CONFIRM == "Yes" ] && i3-msg exit ;;
esac
