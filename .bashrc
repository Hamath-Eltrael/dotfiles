#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Don't remember probably important and might have to do something with ./.bashrc-funtions
PS1='\[\e[1;34m\]\u\[\e[m\]@\[\e[1;34m\]\h\[\e[m\]:\W \$ '

# New commands
alias ll='ls -hal'
alias order66='sudo pacman -Qtdq | sudo pacman -Rns -'
# alias startup='archnews && sudo pacman -Syu && startx'
alias startup='startup-function'
alias screensaver='sleep .5 && xset s activate'

# Modefied commands
alias reboot='sudo reboot now' 
alias shutdown='shutdown now' 
alias ssh='ssh -Y'
alias clear='clear && neofetch'
alias rm='rm -I'

# Displays neofetch in new terminal
neofetch

# source the functions-file
source ~/.bashrc-functions
