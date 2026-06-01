# scripts

They do a bunch of things,

-------------------------------------------------------------------------------

## Contents

- [Color Scripts](#color-scripts)
  - [chameleon](#chameleon)
  - [palette](#palette)
  - [prism](#prism)
- [Display Scripts](#display-scripts)
  - [doublescreen](#doublescreen)
  - [torch](#torch)
  - [triplescreen](#triplescreen)
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
  - [juniper](#juniper)
  - [soundspool](#soundspool)

## Color Scripts

### chameleon

It applies colors to Xresources.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Apt
  - fonts-terminus

### palette

It saves colors from Xresources.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Apt
  - fonts-terminus

### prism

It recolors things.

#### Dependencies

- Apt
  - x11-server-utils

#### Suggested Installs

- Apt
  - zathura
  - zathura-pdf-poppler
  - fonts-terminus
  - dunst
  - polybar

## Display Scripts

### doublescreen

It sets up two screens.

#### Dependencies

- Apt
  - x11-server-utils

#### Suggested Installs

- Apt
  - feh
  - polybar

### torch

It controls the lights.

#### Dependencies

- Apt
  - x11-server-utils

#### Suggested Installs

None

### triplescreen

It sets up three screens.

#### Dependencies

- Apt
  - x11-server-utils

#### Suggested Installs

- Apt
  - feh
  - polybar

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

None

#### Suggested Installs

- Apt
  - dunst

### tether

It mounts the devices.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

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
  - x11-server-utils

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

- Repos
  - https://git.suckless.org/dmenu

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
