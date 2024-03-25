#!/usr/bin/env bash
#

function launch {
    nohup $1 >/dev/null 2>/dev/null & disown; exit
}
#--------------------------------------------------------------------------------------------------------------------
###ALIASES
[ -d ~/.alias ] && for file in ~/.alias/*; do source "$file" ; done
###PROFILE
[[ -e ~/.profile ]] && source ~/.profile

###HISTORY STAFF
HISTFILE=~/.config/bash_history

#/env/dot/.func/system/bresilla forever

#--------------------------------------------------------------------------------------------------------------------
###THEME
source ~/.config/promptline
#--------------------------------------------------------------------------------------------------------------------
