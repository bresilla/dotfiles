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
###DIRENV
eval "$(direnv hook bash)"

###LAUNCHER
if [[ -n ${LAUNCHER} ]]; then
    PS1="> "
    bind 'RETURN: "\e[4~ & \n exit \n"'
    return
fi

#--------------------------------------------------------------------------------------------------------------------
###NNN
n(){
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    nnn "$@"
    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}


#--------------------------------------------------------------------------------------------------------------------
###SETTINGS
[[ $- != *i* ]] && return
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
use_color=true
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] && type -P dircolors >/dev/null && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

xhost +local:root > /dev/null 2>&1
complete -cf sudo
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

###HISTORY STAFF
HISTFILE=~/.config/bash_history

#--------------------------------------------------------------------------------------------------------------------
###THEME
source ~/.config/promptline


#--------------------------------------------------------------------------------------------------------------------
###RE-ENTER SAME DIRECTORY
recd(){
    if [ -z ${cdre+x} ]; then
        export cdre="cdre";
        cd .. && cd - ;
    fi
}
