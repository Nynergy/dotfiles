#!/bin/bash

# A custom polybar module that displays text when a VPN is active

VPN_INTERFACE=tun0

FOREGROUND=`grep color6 ~/.Xresources | awk '{print $2}'`
NORMAL=`grep color7 ~/.Xresources | awk '{print $2}'`

ifconfig $VPN_INTERFACE > /dev/null 2>&1 && printf '(%%{F%s}VPN%%{F%s})' $FOREGROUND $NORMAL
