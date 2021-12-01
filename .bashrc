#!/usr/bin/env bash
#--------------------------------------------------------------------------------------------------------------------
###ALIASES
[ -d ~/.alias ] && for file in ~/.alias/*; do source "$file" ; done
###PROFILE
[[ -e ~/.profile ]] && source ~/.profile

###HISTORY STAFF
HISTFILE=~/.config/bash_history

#--------------------------------------------------------------------------------------------------------------------
###THEME
# source ~/.config/promptline
