# dotfiles

Configuration files for various programs on my Linux machines

------------------------------------------------------------------------------

![Window City Sprawl](masthead.jpg)

## What can I find in this here repository?

#### - Config files for the following programs:

- bash (shell)
- [cascade](https://github.com/Nynergy/cascade) (todo-list)
- dunst (notifications)
- htop (system monitor)
- i3-gaps (window manager)
- lf (file browser)
- [lyra](https://github.com/Nynergy/lyra) (LMS viewer)
- polybar (status bar)
- tmux (terminal multiplexer)
- urxvt (terminal)
- vim (editor)
- xorg (display server)
- zathura (pdf viewer)

#### - Scripts for system utilities and for fun:

Color Scripts | Description
--------------|------------
gen-dunst.sh | Bash script for grabbing Xresources colors and applying them to the dunst config
gen-polybar.sh | Bash script for grabbing Xresources colors and applying them to the polybar config
gen-zathura.sh | Bash script for grabbing Xresources colors and applying them to the zathura config
prism | Bash script that calls all my gen-\*.sh scripts described above

Dmenu Scripts | Description
--------------|------------
chameleon | Bash script that picks and sets one of my colorschemes with dmenu
palette | Bash script that reads Xresources and saves it as a colorscheme with dmenu
puppetmaster | Master utility script for multiple system features using dmenu
rom-picker | Bash script for selecting a ROM to load into an emulator with dmenu
tether | Bash script for mounting/unmounting devices with dmenu
viewfinder | Bash script for setting screen resolutions and changing configs to suit

Polybar Scripts | Description
--------------|------------
diskbar.sh | Bash script that displays disk space info in a polybar module
marquee | Bash script that starts the given polybar via command line argument
polybar-vpn.sh | Bash script that indicates if a VPN is running in a polybar module
polysqueeze.sh | Bash script that indicates if a squeezelite player is running in a polybar module
sirenbar.py | Python script that displays song info from LMS in a polybar module

Misc. Scripts | Description
--------------|------------
discord-audioshare.sh | Bash script for creating audio sinks/loopbacks for audio sharing in Discord
doublescreen.sh | Bash script for resizing/placing screens in a two-monitor setup
feelsTPRman.sh | Bash script for opening/playing Twilight Princess Randomizer with Dolphin and [midna](https://github.com/Nynergy/midna)
homeVPN | Bash script for starting a VPN into my home network -- credentials/config not included >:)
juniper | Bash script for starting a VPN into the Binghamton University network using CAS credentials
i3splat.py | Python script I slightly modified for setting up i3 workspace layouts
mirror | Bash script that will copy files to this very repo and push changes
sketch | Bash script for artistic generative image pixelsorting via Python
soundspool | Bash script for starting/killing a locally running squeezelite player
stream.py | Python script that uses i3splat.py to create a development workspace with a webcam
stream\_wiki.sh | Bash script for auto-generating a VimWiki notes document based on date
torch | Bash script for changing screen brightness on all monitors using xrandr
vault | Bash script for locking the screen via i3lock

#### - A directory of colorschemes for use with my color scripts 'chameleon' and 'palette'

## What can I not find in this here repository?

- Stored Wi-Fi information for wpa\_supplicant
  - Those passwords are not for your eyes, young one :)

- OpenVPN config file for connecting to my home network
  - I don't want you tampering with my music files :)

- soundbridge.sh
  - Bash script for mounting my music server's Samba share over the network
  - Again, I don't want you kiddies going through my music server :)
