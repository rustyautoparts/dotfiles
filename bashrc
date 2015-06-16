#
# ~/.bashrc
#

export TERM=rxvt-unicode-256color

#Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-bright.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\]\u\[\e[1;36m\]@\h \[\e[0;36m\]\w \[\e[1;37m\]$\[\e[0m\] '

#When unknown command is run, searches for pkg in Pacman repository
source /usr/share/doc/pkgfile/command-not-found.bash
