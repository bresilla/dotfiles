#!/usr/bin/env bash
#--------------------------------------------------------------------------------------------------------------------
###ALIASES
[ -d ~/.alias ] && for file in ~/.alias/*; do source "$file" ; done
###PROFILE
[[ -e ~/.profile ]] && source ~/.profile

###HISTORY STAFF
HISTFILE=~/.config/bash_history

/env/dot/.func/system/bresilla forever

#--------------------------------------------------------------------------------------------------------------------
###THEME
source ~/.config/promptline
#--------------------------------------------------------------------------------------------------------------------


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
. "/var/cargo/env"

# nostromo [section begin]
source <(nostromo completion bash)
# nostromo [section end]
