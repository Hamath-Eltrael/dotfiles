#!/bin/sh
xrandr --output eDP-1 --primary --mode 3840x2160 --pos 0x1440 --rotate normal --dpi 175 --output DP-1-1.3 --mode 2560x1440 --pos 475x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --off

# restart i3 for bar-fitment
i3-msg restart
