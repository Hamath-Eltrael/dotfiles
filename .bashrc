#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;34m\]\u\[\e[m\]@\[\e[1;34m\]\h\[\e[m\]:\W \$ '

# New commands
alias ll='ls -al'
alias order66='sudo pacman -Qtdq | sudo pacman -Rns -'
alias clear='clear && neofetch'

# Modefied commands

# Displays neofetch in new terminal
neofetch
