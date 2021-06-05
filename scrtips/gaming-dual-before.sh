#!/bin/sh

# deactivate the touchpad
xinput --disable "SynPS/2 Synaptics TouchPad"

# set the headphones as soundoutput
pactl set-default-sink alsa_output.usb-ASUSTeK_Strix_7.1-00.analog-surround-71
