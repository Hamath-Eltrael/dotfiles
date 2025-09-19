#!/bin/sh

# deactivate the touchpad
xinput --disable "SynPS/2 Synaptics TouchPad"

# deactivate other screens and set laptop-screen to 1080p resolution
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --dpi 100 --output DP-1-1.3 --off --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off

# set the headphones as soundoutput
pactl set-default-sink alsa_output.usb-ASUSTeK_Strix_7.1-00.analog-surround-71

# restart i3; so the bars fit; then stop picom
i3-msg restart && killall picom
