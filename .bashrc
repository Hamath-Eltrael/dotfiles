#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='eza --icons=always  --color=auto --hyperlink --group-directories-first'
    alias tree='eza --tree --icons=always --color=auto --hyperlink'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# more hany aliases, that have nothing to do with colors.
if command -v nvim >/dev/null 2>&1
then
	alias vim='nvim'
fi

# set nvim as the default editor
if command -v nvim >/dev/null 2>&1
then
	export EDITOR='nvim'
	export VISUAL='nvim'
fi

# Don't remember probably important and might have to do something with ./.bashrc-funtions
PS1='\[\e[1;34m\]\u\[\e[m\]@\[\e[1;34m\]\h\[\e[m\]:\W \$ '

# New commands
alias ll='eza --icons=always  --color=auto --hyperlink --group-directories-first -lh'
alias la='eza --icons=always  --color=auto --hyperlink --group-directories-first -lahg'
alias lga='eza --icons=always  --color=auto --hyperlink --group-directories-first -lahg --git'
alias lg='eza --icons=always  --color=auto --hyperlink --group-directories-first -lh --git'
alias order66='sudo pacman -Qtdq | sudo pacman -Rns -'
# alias startup='archnews && sudo pacman -Syu && startx'
alias startup='startup-function'
alias screensaver='sleep .5 && xset s activate'

# Modefied commands
alias reboot='sudo reboot now' 
alias shutdown='shutdown now' 
alias ssh='kitty +kitten ssh -Y'
alias clear='clear && neofetch'
alias rm='rm -I'

# Displays neofetch in new terminal
neofetch

# source the functions-file
source ~/.bashrc-functions

# für Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# source the powerline activation conditions (like only in Kitty but not in other terminals or the TTY)
source ~/.bashrc-powerline
