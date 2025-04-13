# dotfiles
my dotfiles

## Programms "needed(?)"

 - xorg-server
 - xorg-xinit
 - xorg-xrandr
 - xorg-fonts 
 - xorg-fonts-100dpi 
 - xorg-fonts-75dpi 
 - ttf-dejavu
 - cava
 - rxvt-unicode
 - htop
 - neofetch
 - git
 - polybar
 - ranger
 - vim
 - i3 
 - arandr
 - qt5
 - firefox
 - dmenu
 - pipewire
 - pipewire-pulse
 - rtkit
 - picom
 - pavucontrol
 - feh
 - nautilus (it's nice to view files the classik way every now and then)
 - & posibly, probably more

## For Devices with Wi-Fi
 - networkmanager (enable this with `systemctl`)
 - wpa_supplicant (enable this with `systemctl`)

Maker sure thet dhcpcd is disabled in `systemctl`. Then you can connect to networks with `nmtui`. And it should even reconnect automatically, theoretically.


## Before copying into the Home Directory:
Additionally, it is imperative that you ensure that the folders `.git` and `.gitignore` are not copied to the home directory.


## Things to do, after putting files into the Home Direcotry:

Make sure that the owner of the Home Directory is the owner of the files. If not, it's easiest to **login as that user** and executing: 
```
sudo chown -R $(whoami) dateiname
```
Afterwards you might want to reboot.

 
## Programs that are Optional, in the sense that their stuff has been # in the Configs

 - qutebrowser
 - easyeffects
