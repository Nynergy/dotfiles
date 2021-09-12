#!/bin/bash

# A master script for recoloring my applications

xrdb load .Xresources

pkill dunst

gen-dunst.sh && dunstify "RECOLORED DUNST"
gen-polybar.sh && dunstify "RECOLORED POLYBAR"
gen-zathura.sh && dunstify "RECOLORED ZATHURA"
gen-startpage.sh && dunstify "RECOLORED STARTPAGE"
gen-qutebrowser.sh && dunstify "RECOLORED QUTEBROWSER"
#gen-firefox.sh && dunstify "RECOLORED FIREFOX"
#gen-tridactyl.sh && dunstify "RECOLORED TRIDACTYL"
#xres-tmTheme.sh ~/.Xresources > .config/sublime-text-3/Packages/User/apparition.tmTheme && dunstify "RECOLORED SUBLIME"

i3-msg restart
