#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

#enviroment variable
#for qt5 to use breeze
export QT_STYLE_OVERRIDE=breeze

#legt monitoreinstellungen original fest mit arandr soll generieren
xrandr --output DVI-D-0 --off --output HDMI-0 --off --output HDMI-1 --off --output DP-0 --mode 2560x1440 --pos 2560x0 --rotate normal --dpi 100 --output DP-1 --off --output DP-2 --mode 2560x1440 --pos 0x0 --rotate normal --dpi 100 --output DP-3 --off

#startet i3 döö
numlockx &
exec i3
