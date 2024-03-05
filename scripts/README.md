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
  - [vault](#vault)
- [Mounting Scripts](#mounting-scripts)
  - [manila](#manila)
  - [soundbridge](#soundbridge)
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
  - [sketch](#sketch)
  - [soundspool](#soundspool)

## Color Scripts

### chameleon

It applies colors to Xresources.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Emerge
  - media-fonts/terminus-font

### palette

It saves colors from Xresources.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Emerge
  - media-fonts/terminus-font

### prism

It recolors things.

#### Dependencies

- Emerge
  - x11-apps/xrdb

#### Suggested Installs

- Emerge
  - app-text/zathura
  - app-text/zathura-pdf-mupdf
  - media-fonts/terminus-font
  - x11-misc/dunst
  - x11-misc/polybar

## Display Scripts

### doublescreen

It sets up two screens.

#### Dependencies

- Emerge
  - x11-apps/xrandr

#### Suggested Installs

- Emerge
  - media-gfx/feh
  - x11-misc/polybar

### torch

It controls the lights.

#### Dependencies

- Emerge
  - x11-apps/xrandr

#### Suggested Installs

None

### vault

It locks the screen.

#### Dependencies

- Emerge
  - x11-misc/i3lock

#### Suggested Installs

- Emerge
  - media-gfx/imagemagick
  - media-gfx/scrot

## Mounting Scripts

### manila

It holds the reports.

#### Dependencies

None

#### Suggested Installs

- Emerge
  - x11-misc/dunst

### soundbridge

It bridges the sound.

#### Dependencies

- Emerge
  - app-admin/pass
  - net-fs/cifs-utils

#### Suggested Installs

- Emerge
  - x11-misc/dunst

### tether

It mounts the devices.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Emerge
  - media-fonts/terminus-font
  - x11-misc/dunst

## Polybar Scripts

### diskbar

It prints the bar for the disk.

#### Dependencies

None

#### Suggested Installs

- Emerge
  - x11-misc/polybar

### marquee

It runs the bars.

#### Dependencies

- Emerge
  - x11-apps/xrandr
  - x11-misc/polybar

#### Suggested Installs

- Emerge
  - x11-misc/dunst

### polysqueeze

It prints the squeezelite status.

#### Dependencies

- Repos
  - https://github.com/ralph-irving/squeezelite

#### Suggested Installs

- Emerge
  - x11-misc/polybar

### polyvpn

It prints the VPN status.

#### Dependencies

None

#### Suggested Installs

- Emerge
  - x11-misc/polybar

### sirenbar

It prints the song info.

#### Dependencies

- Emerge
  - app-misc/jq
  - net-misc/curl

#### Suggested Installs

- Emerge
  - x11-misc/dunst
  - x11-misc/polybar

## System Scripts

### puppetmaster

It pulls the strings.

#### Dependencies

- Repos
  - https://git.suckless.org/dmenu

#### Suggested Installs

- Emerge
  - media-fonts/terminus-font
  - media-gfx/feh
  - media-gfx/scrot
  - media-gfx/sxiv
  - media-video/mpv
  - x11-misc/dunst
  - x11-misc/polybar
  - x11-misc/xcompmgr
  - x11-wm/i3

## Misc Scripts

### juniper

It does the BU VPN.

#### Dependencies

- Emerge
  - net-vpn/openconnect

#### Suggested Installs

- Emerge
  - x11-misc/dunst

### sketch

It sorts the image.

#### Dependencies

- Emerge
  - dev-lang/python
- Other
  - (pip) pixelsort

#### Suggested Installs

None

### soundspool

It spools the sounds.

#### Dependencies

- Repos
  - https://github.com/ralph-irving/squeezelite

#### Suggested Installs

- Emerge
  - x11-misc/dunst
