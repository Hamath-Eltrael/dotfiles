#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;34m\]\u\[\e[m\]@\[\e[1;34m\]\h\[\e[m\]:\W \$ '

# New commands
alias ll='ls -hal'
alias order66='sudo pacman -Qtdq | sudo pacman -Rns -'
alias startup='archnews && sudo pacman -Syu && startx'

# Modefied commands
alias reboot='sudo reboot now' 
alias ssh='ssh -Y'
alias clear='clear && neofetch'

# Displays neofetch in new terminal
neofetch

# source the functions-file
source ~/.bashrc-functions
