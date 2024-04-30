export HOSTNAME=$(uname -n)

export DOTS=$HOME/dots
export SETS=$HOME/sets
export DATA=$HOME/data
export DOWN=$HOME/down
export SYNC=$HOME/sync
export TEMP=/tmp

#export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/cuda-12.1/lib64:$LD_LIBRARY_PATH
#export RPATH=/usr/local/lib:/usr/local/cuda-12.1/lib64:$RPATH
#export RUNPATH=/usr/local/lib:/usr/local/cuda-12.1/lib64:$RUNPATH
#export PATH=/usr/local/bin:/usr/local/cuda-12.1/bin:$PATH

#USER BINARIES AND SCRIPTS
[[ -d "/env/bin" ]] && PATH="$PATH:/env/bin"
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/sbin" ]] && PATH="$HOME/.local/sbin:$PATH"
[[ -d /env/dot/.func ]] && for file in /env/dot/.func/*; do [[ -d "$file" ]] && PATH="$file:$PATH"; done

#SECRETS
[[ -e "/env/set/variables" ]] && source /env/set/variables

#ALT
export PATH="$HOME/.local/alt/shims:$PATH"

#PKGCONFIGS
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

#---------------------------         LOC & TERM          --------------------------
export COLORTERM=truecolor
export BROWSER=org.mozilla.firefox
# export EDITOR=nvim
export EDITOR=hx
# export TERMINAL=kitty
# export CONSOLE=kitty
export DISTRO=$(cat /etc/os-release | grep -m 1 ID)

[[ -v ${DISPLAY} ]] && export DISPLAY=:0

#---------------------------         LANGUAGES          --------------------------
#C++
export XMAKE_GLOBALDIR=/pkg/xmake
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile"
export VCPKG_ROOT="/pkg/vcpkg"
# RUST
export CARGO_HOME="/pkg/cargo"
export RUSTUP_HOME="$CARGO_HOME/rustup"
[[ -d "$CARGO_HOME/bin" ]] && PATH="$CARGO_HOME/bin:$PATH"
# GO
export GOPATH="/pkg/go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
[[ -d "$GOPATH/bin" ]] && PATH="$GOPATH/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
# NIM
export NIMBLE_DIR="/pkg/nimble"
# ZIG
export ZIGY=zig
# PYTHON
export PIXI_DIR=/pkg/pixi/

#---------------------------             LULE           --------------------------
export BAT_THEME="TwoDark"
export LULE_W="/env/set/.wallpaper"
export LULE_S="/env/dot/.func/wm/lule_colors"
export LULE_C="/home/bresilla/.config/lule/configs.json"
export GUM_CHOOSE_CURSOR_FOREGROUND="1"
export GUM_CHOOSE_SELECTED_FOREGROUND="9"
export GUM_CONFIRM_SELECTED_FOREGROUND="15"
export GUM_CONFIRM_UNSELECTED_FOREGROUND="7"

#---------------------------            LOCALE           --------------------------
export TZ='Europe/Berlin'
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
#export LC_CTYPE="en_US.UTF-8"
#export LC_NUMERIC="en_US.UTF-8"
#export LC_TIME="en_US.UTF-8"
#export LC_COLLATE="en_US.UTF-8"
#export LC_MONETARY="en_US.UTF-8"
#export LC_MESSAGES="en_US.UTF-8"
#export LC_PAPER="en_US.UTF-8"
#export LC_NAME="en_US.UTF-8"
#export LC_ADDRESS="en_US.UTF-8"
#export LC_TELEPHONE="en_US.UTF-8"
#export LC_MEASUREMENT="en_US.UTF-8"
#export LC_IDENTIFICATION="en_US.UTF-8"
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive


#---------------------------              XDG           --------------------------
export XDG_CONFIG_HOME=/home/$USER/.config
export XDG_CONFIG_PATH=/home/$USER/.config
export XDG_DATA_HOME=/home/$USER/.local/share
export XDG_DATA_PATH=/home/$USER/.local/share
export XDG_CACHE_HOME=/home/$USER/.cache
export XDG_CACHE_PATH=/home/$USER/.cache
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export GRAVEYARD=/tmp/graveyard-$USER

#---------------------------     HOME_CLEANUP          --------------------------
export WAKATIME_HOME="$XDG_CONFIG_HOME"/wakatime
export TASKDATA="$XDG_DATA_HOME"/task
export TASKRC="$XDG_CONFIG_HOME"/task/taskrc
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export NOSTROMO_HOME="$XDG_DATA_HOME"/nostromo

#---------------------------            ROS             --------------------------
#export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
#export CYCLONEDDS_URI='<CycloneDDS><Domain><General><NetworkInterfaceAddress>stargate</></></></>'
#export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces><NetworkInterface name="stargate"/></></></></>'
export ROS_DOMAIN_ID=222
export WEBOTS_HOME=/usr/local/webots
export LD_LIBRARY_PATH=/usr/local/webots/lib/controller:$LD_LIBRARY_PATH
export PYTHONPATH=/usr/local/webots/lib/controller/python:$PYTHONPATH


#----------------------------        HIVE-SERVER        ---------------------------
export OLLAMA_HOST=data:11434
export OATMEAL_OLLAMA_URL=http://data:11434
export DOCKER_HOST=tcp://data:2375

#---------------------------            CORE            --------------------------
if [ "$HOSTNAME" = core ]; then
    export SSH_AGENT_PID=""
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    export GPG_TTY=$(tty)
fi
[[ -f "$HOME/.external" ]] && source /home/bresilla/.external

if [ -e /home/bresilla/.nix-profile/etc/profile.d/nix.sh ]; then . /home/bresilla/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
