#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# New commands
alias ll='ls -al'
alias order66='sudo pacman -Qtdq | sudo pacman -Rns -'

# Modefied commands

# Displays neofetch in new terminal
neofetch