#!/usr/bin/env zsh
#--------------------------------------------------------------------------------------------------------------------
###THEME
[ -f ~/.config/promptline ] && source ~/.config/promptline

#--------------------------------------------------------------------------------------------------------------------
###WAL COLORS
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors.sh


#--------------------------------------------------------------------------------------------------------------------
###CASE INSENSITIVE
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# treat `#', `~' and `^' characters as part of patterns for filename generation
setopt extended_glob
setopt local_options
# case insensitive matching when performing filename expansion
setopt no_case_glob
# if command not found, but directory found, cd into this directory
setopt auto_cd
# turn off automatic matching of ~/ directories (speeds things up)
setopt no_cdable_vars
# prevents you from accidentally overwriting an existing file
setopt clobber
# perform implicit tees or cats when multiple redirections are attempted
setopt multios
# do not send the HUP signal to backround jobs on shell exit
setopt no_hup
# parameter expansion, command substitution and arithmetic expansion are performed in prompts
setopt prompt_subst
# do not prompt when rm *
setopt rmstarsilent
#ignore commands that start with space
setopt histignorespace


#--------------------------------------------------------------------------------------------------------------------
###HISTORY STAFF
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
HISTFILE=~/.config/zsh_history
HISTSIZE=100000
SAVEHIST=100000
HISTORY_IGNORE='(reboot|restart|poweroff|suspend|_shko)'
setopt append_history
setopt sharehistory
setopt incappendhistory
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt interactive_comments
setopt no_beep


#--------------------------------------------------------------------------------------------------------------------
###VI MODE
bindkey -v
DEFAULT_VI_MODE=viins
KEYTIMEOUT=1
set_vi_mode_cursor() {
    case $KEYMAP in
        vicmd)
          printf "\033[2 q"
          ;;
        main|viins)
          printf "\033[3 q"
          ;;
    esac
}
zle-keymap-select(){ set_vi_mode_cursor; zle reset-prompt; }
zle-line-init(){ zle -K $DEFAULT_VI_MODE; }
zle -N zle-line-init
zle -N zle-keymap-select
vi-append-x-selection(){ RBUFFER=$(xsel -o -p </dev/null)$RBUFFER; }
zle -N vi-append-x-selection
bindkey -M vicmd '^P' vi-append-x-selection
vi-yank-x-selection(){ print -rn -- $CUTBUFFER | xsel -i -p; }
zle -N vi-yank-x-selection
bindkey -M vicmd '^Y' vi-yank-x-selection


#--------------------------------------------------------------------------------------------------------------------
###MODULES
autoload -U colors && colors
autoload compinit && compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

# TMOUT=1
TRAPALRM() { [[ "$WIDGET" != "complete-word" ]] && zle reset-prompt }

[ -d ~/.config/zsh/insult ] && . ~/.config/zsh/insult
[ -f ~/.config/zsh/async ] && autoload -U async
[ -d ~/.config/zsh/cmdtime ] && source ~/.config/zsh/cmdtime/zsh-command-time.zsh
[ -d ~/.config/zsh/visualvi ] && source ~/.config/zsh/visualvi/zsh-vimode-visual.zsh
[ -d ~/.config/zsh/autosuggestions ] && source ~/.config/zsh/autosuggestions/zsh-autosuggestions.zsh
[ -d ~/.config/zsh/syntax ] && source ~/.config/zsh/syntax/zsh-syntax-highlighting.zsh
#[ -d ~/.config/zsh/almostontop ] && source ~/.config/zsh/almostontop/almostontop.plugin.zsh
[ -d ~/.config/zsh/upsearch ] && source ~/.config/zsh/upsearch/zsh-history-substring-search.zsh
[ -d ~/.config/zsh/upsearch ] && source ~/.config/zsh/upsearch/zsh-miscellaneous.zsh
[ -d ~/.config/zsh/autopair ] && source ~/.config//zsh/autopair/autopair.zh
[ -d ~/.config/zsh/completions ] && source ~/.config/zsh/completions/zsh-completions.zsh


#--------------------------------------------------------------------------------------------------------------------
###KILLER
function run_killer(){ killer; zle reset-prompt; zle redisplay; }
zle -N run_killer
bindkey -M vicmd '^k' run_killer
bindkey -M viins '^k' run_killer
bindkey '^k' run_killer


#--------------------------------------------------------------------------------------------------------------------
# CTRL-Z starts previously suspended process.
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    bg
    zle redisplay
    fg &>/dev/null
  else
    zle push-input
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

#--------------------------------------------------------------------------------------------------------------------
###SCRIPTS PATH
export FPATH=~/.config/zsh:$FPATH

###ALIASES
[[ -f ~/.aliases ]] && source ~/.aliases
alias \$=''

###PROFILE
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

##NAME
[[ -x "$(command -v tmux)" ]] && tmux setenv -g TMUX_FANCY_$(tmux display -p "#D" | tr -d %) $FANCY
[[ -x "$(command -v tmux)" ]] && tmux setenv FANCY $FANCY

###DIRENV
eval "$(direnv hook zsh)"

###SSH&GPG
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

#--------------------------------------------------------------------------------------------------------------------
# NNN
[[ -e ~/.config/nnn/config.sh ]] && emulate sh -c 'source ~/.config/nnn/config.sh'
nnnn(){
  export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
  if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then echo "already running"; return; fi
  nnn -deHQ "$@"
  if [ -f "$NNN_TMPFILE" ]; then
    . "$NNN_TMPFILE"; rm -f "$NNN_TMPFILE" > /dev/null
  fi
}
bindkey -s '^W' ' nnnn\n'

#--------------------------------------------------------------------------------------------------------------------
#RUN OR LS (shotrcut: Enter)
runner () {
    # check if the buffer does not contain any words
    if [ ${#${(z)BUFFER}} -eq 0 ]; then
      if [[ -n $(echo $ENVNAME) ]]; then
        build && clear && run
      else
        printf "\n" && exa -laiSHF --header --git --group-directories-first --tree -L1
      fi
    fi
    zle accept-line
}
zle -N runner
bindkey '^M' runner

#--------------------------------------------------------------------------------------------------------------------
###TMUX && CD && ZOXIDE
eval "$(zoxide init zsh)"
cd() {
    if [[ -z $1 ]]; then
        cd $(proji ls | head -n-1 | tail -n+4 | fzy | cut -d "|" -f4)
    elif [[ -d $1 ]] ; then
        builtin cd $1
    elif [[ $1 == root ]] && [[ -d $(git rev-parse --show-toplevel) ]] ; then
        cd $(git rev-parse --show-toplevel)
    else 
        z $1;
    fi
}

#--------------------------------------------------------------------------------------------------------------------
#JUMP (shotrcut: Alt + j)
jump () {
  export NEWT_COLORS='root=,black entry=black,red'
  diri=$(whiptail --inputbox 'GOTO:' 8 60 3>&1 1>&2 2>&3)
  zoxi=$(zoxide query -- $diri)
  cd $zoxi
}
bindkey -s '^[j' ' jump\n'

#--------------------------------------------------------------------------------------------------------------------
#PROJI (shotrcut: Alt + [1 2 3 4 5 6 7 8 9])
proj() { cd $(proji ls | head -n-1 | tail -n+4 | sed -n "$1"p | cut -d '|' -f4) }
for i in 1 2 3 4 5 6 7 8 9
do
  bindkey -s "^[$i" "proj $i\n"
done

#--------------------------------------------------------------------------------------------------------------------
#TAB-RS (shotrcut: Ctrl + e)
[[ -n $TAB ]] && [ -f ~/data/docs/BRAND/logo/ascii ] && ~/dots/.func/system/bresilla
bindkey -s '^E' ' tab\n'
