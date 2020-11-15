#!/usr/bin/env bash
#--------------------------------------------------------------------------------------------------------------------
###WAL COLORS
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors.sh

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
