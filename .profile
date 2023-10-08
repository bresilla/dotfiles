export HOSTNAME=$(uname -n)

export DOTS=$HOME/dots
export SETS=$HOME/sets
export DATA=$HOME/data
export DOWN=$HOME/down
export SYNC=$HOME/sync
export TEMP=/tmp


#USER BINARIES AND SCRIPTS
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/sbin" ]] && PATH="$HOME/.local/sbin:$PATH"
[[ -d /opt/TurboVNC/bin/vncserver ]] && PATH="/opt/TurboVNC/bin/vncserver:$PATH"
[[ -d "/env/bin" ]] && PATH="$PATH:/env/bin"
[[ -d /env/dot/.func ]] && for file in /env/dot/.func/*; do [[ -d "$file" ]] && PATH="$file:$PATH"; done

#XMAKE
export XMAKE_GLOBALDIR=/pkg/xmake
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
export VCPKG_ROOT="/pkg/vcpkg"

#NVIDIA
[[ -d "/usr/local/cuda" ]] && PATH="$PATH:/usr/local/cuda/bin" LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
[[ -d "/opt/cuda" ]] && PATH="$PATH:/opt/cuda/bin" LD_LIBRARY_PATH="/opt/cuda/lib64:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"
#export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export CUDA_TOOLKIT_ROOT_DIR="/opt/cuda"

#SECRETS
[[ -e "/env/set/variables" ]] && source /env/set/variables

#ALT
export PATH="$HOME/.local/alt/shims:$PATH"


#DISPLAY
# [[ -z "${DISPLAY}" ]] && export DISPLAY=:0

#PKGCONFIGS
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

#---------------------------         LOC & TERM          --------------------------
export COLORTERM=truecolor
export BROWSER=org.mozilla.firefox
export EDITOR=nvim
export TERMINAL=kitty
export CONSOLE=kitty
export TZ='Europe/Berlin'
export LC_ALL="en_US.UTF-8"
export DISTRO=$(cat /etc/os-release | grep -m 1 ID)


#---------------------------         LANGUAGES          --------------------------

# RUST
export CARGO_HOME="/var/cargo"
export RUSTUP_HOME="/var/rust"
[[ -d "/var/cargo/bin" ]] && PATH="/var/cargo/bin:$PATH"
# GO
export GOPATH="/var/go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
[[ -d "/var/go/bin" ]] && PATH="/var/go/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
# NIM
export NIMBLE_DIR="/var/nimble"

#---------------------------             LULE           --------------------------
export BAT_THEME="TwoDark"
export LULE_W="/env/set/.wallpaper"
export LULE_S="/env/dot/.func/wm/lule_colors"
export LULE_C="/home/bresilla/.config/lule/configs.json"


#---------------------------            LOCALE           --------------------------
#export LANG=en_US.UTF-8
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
#export LC_ALL=en_US.UTF-8


#---------------------------              XDG           --------------------------
export WINEPREFIX=/var/lib/wine
export LIBVA_DRIVER_NAME=iHD
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive
export XDG_CONFIG_HOME=/home/$USER/.config
export XDG_CONFIG_PATH=/home/$USER/.config
export XDG_DATA_HOME=/home/$USER/.local/share
export XDG_DATA_PATH=/home/$USER/.local/share
export XDG_CACHE_HOME=/home/$USER/.cache
export XDG_CACHE_PATH=/home/$USER/.cache
export XDG_CURRENT_DESKTOP=/usr/share/xdg-desktop-portal/portals/gtk.portal
export GTK_USE_PORTAL=1
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
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS><Domain><General><NetworkInterfaceAddress>stargate</></></></>'
#export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces><NetworkInterface name="robs4crops"/></></></></>'
export ROS_DOMAIN_ID=222
export WEBOTS_HOME=/usr/local/webots
export LD_LIBRARY_PATH=/usr/local/webots/lib/controller:$LD_LIBRARY_PATH
export PYTHONPATH=/usr/local/webots/lib/controller/python:$PYTHONPATH


#---------------------------            IOT             --------------------------
export BLINKA_MCP2221=1
export SDL_JOYSTICK_DEVICE=/dev/input/js0
export OLLAMA_HOST=10.10.20.10:11434

#---------------------------            CORE            --------------------------
if [ "$HOSTNAME" = core ]; then
    export SSH_AGENT_PID=""
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    export GPG_TTY=$(tty)
fi
[[ -f "$HOME/.external" ]] && source /home/bresilla/.external
