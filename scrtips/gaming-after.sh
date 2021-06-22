#!/bin/sh

# activate tochpad
xinput --enable "SynPS/2 Synaptics TouchPad"

# set laptopscreen to 4k and the secondary monitor to WQHD
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x1440 --rotate normal --dpi 175 --output DP-1-1.3 --mode 2560x1440 --pos 475x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off

# set the dock-speakers as soundoutput
pactl set-default-sink alsa_output.usb-Lenovo_ThinkPad_USB-C_Dock_Gen2_USB_Audio_000000000000-00.analog-stereo

# restart picom
picom &
