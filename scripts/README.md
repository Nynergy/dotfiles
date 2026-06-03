# scripts

They do a bunch of things,

-------------------------------------------------------------------------------

## Contents

- [Color Scripts](#color-scripts)
  - [chameleon](#chameleon)
  - [palette](#palette)
  - [prism](#prism)
- [Display Scripts](#display-scripts)
  - [mosaic](#mosaic)
  - [torch](#torch)
  - [vault](#vault)
- [Mounting Scripts](#mounting-scripts)
  - [manila](#manila)
  - [tether](#tether)
- [Polybar Scripts](#polybar-scripts)
  - [diskbar](#diskbar)
  - [marquee](#marquee)
  - [polysqueeze](#polysqueeze)
  - [polyvpn](#polyvpn)
  - [sirenbar](#sirenbar)
- [System Scripts](#system-scripts)
  - [puppetmaster](#puppetmaster)
- [Misc Scripts](#misc-scripts)
  - [lintel](#lintel)
  - [juniper](#juniper)
  - [soundspool](#soundspool)

## Color Scripts

### chameleon

It applies colors to Xresources.

#### Dependencies

- Apt
  - suckless-tools

#### Suggested Installs

- Apt
  - fonts-terminus

### palette

It saves colors from Xresources.

#### Dependencies

- Apt
  - suckless-tools

#### Suggested Installs

- Apt
  - fonts-terminus

### prism

It recolors things.

#### Dependencies

None

#### Suggested Installs

- Apt
  - zathura
  - fonts-terminus
  - dunst
  - polybar

## Display Scripts

### mosaic

It applies the layout.

#### Dependencies

None

#### Suggested Installs

- Apt
  - feh
  - polybar

### torch

It controls the lights.

#### Dependencies

None

#### Suggested Installs

None

### vault

It locks the screen.

#### Dependencies

- Apt
  - i3lock

#### Suggested Installs

- Apt
  - imagemagick
  - scrot

## Mounting Scripts

### manila

It holds the reports.

#### Dependencies

- Apt
  - cifs-utils

#### Suggested Installs

- Apt
  - dunst

### tether

It mounts the devices.

#### Dependencies

- Apt
  - suckless-tools

#### Suggested Installs

- Apt
  - fonts-terminus
  - dunst

## Polybar Scripts

### diskbar

It prints the bar for the disk.

#### Dependencies

None

#### Suggested Installs

- Apt
  - polybar

### marquee

It runs the bars.

#### Dependencies

- Apt
  - polybar

#### Suggested Installs

- Apt
  - dunst

### polysqueeze

It prints the squeezelite status.

#### Dependencies

- Apt
  - squeezelite-pulseaudio

#### Suggested Installs

- Apt
  - polybar

### polyvpn

It prints the VPN status.

#### Dependencies

None

#### Suggested Installs

- Apt
  - polybar

### sirenbar

It prints the song info.

#### Dependencies

- Apt
  - jq
  - curl

#### Suggested Installs

- Apt
  - dunst
  - polybar

## System Scripts

### puppetmaster

It pulls the strings.

#### Dependencies

- Apt
  - suckless-tools

#### Suggested Installs

- Apt
  - fonts-terminus
  - feh
  - scrot
  - sxiv
  - mpv
  - dunst
  - polybar
  - xcompmgr
  - i3-wm

## Misc Scripts

### lintel

It opens the project.

#### Dependencies

- Apt
  - tmux
  - rxvt-unicode
  - suckless-tools

#### Suggested Installs

- Apt
  - fonts-terminus

### juniper

It does the BU VPN.

#### Dependencies

- Apt
  - openconnect

#### Suggested Installs

- Apt
  - dunst

### soundspool

It spools the sounds.

#### Dependencies

- Apt
  - squeezelite-pulseaudio

#### Suggested Installs

- Apt
  - dunst
