xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

exec xrdb ~/.Xresources &
exec i3
