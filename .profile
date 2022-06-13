export HOSTNAME=$(uname -n)
export OS=$(lsb_release -i | cut -d':' -f2 | xargs)

export DOTS=$HOME/dots
export SETS=$HOME/sets
export DATA=$HOME/data
export DOWN=$HOME/down
export SYNC=$HOME/sync
export TEMP=/tmp

export PATH=$PATH:/usr/local/go/bin

#USER BINARIES AND SCRIPTS
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/sbin" ]] && PATH="$HOME/.local/sbin:$PATH"
[[ -d /opt/TurboVNC/bin/vncserver ]] && PATH="/opt/TurboVNC/bin/vncserver:$PATH"
[[ -d "/env/bin" ]] && PATH="/env/bin:$PATH"
[[ -d /env/dot/.func ]] && for file in /env/dot/.func/*; do [[ -d "$file" ]] && PATH="$file:$PATH"; done

#NIX
export NIX_PATH=${NIX_PATH:+$NIX_PATH:}/nix/channels  # move "~/.nix-defexpr/channels" to "/nix/channels"
[[ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]] && . $HOME/.nix-profile/etc/profile.d/nix.sh;
export NIXPKGS_ALLOW_UNFREE=1

#MAMBA and/or CONDA
export CONDA_HOME="/con"
[[ -f "/con/etc/profile.d/conda.sh" ]]  && . "/con/etc/profile.d/conda.sh"

#PLATFORMIO
# export PLATFORMIO_CORE_DIR=/opt/pio
# [[ -d "/opt/pio" ]]  && PATH="$PATH:/opt/pio/penv/bin"

#NVIDIA
[[ -d "/usr/local/cuda" ]] && PATH="/usr/local/cuda/bin:$PATH" LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
[[ -d "/opt/cuda" ]] && PATH="/opt/cuda/bin:$PATH" LD_LIBRARY_PATH="/opt/cuda/lib64:${LD_LIBRARY_PATH}"

export LD_LIBRARY_PATH="/usr/local/lib/:$LD_LIBRARY_PATH"
#export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export CUDA_TOOLKIT_ROOT_DIR="/opt/cuda"


#FLATPAK
FLATPAK_ENABLE_SDK_EXT=rust-nightly

#SECRETS
[[ -e "/env/set/variables" ]] && source /env/set/variables

#ALT
export PATH="$HOME/.local/alt/shims:$PATH"


#DISPLAY
# [[ -z "${DISPLAY}" ]] && export DISPLAY=:0

#PKGCONFIGS
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

export BROWSER=org.mozilla.firefox
export EDITOR=nvim
export TERMINAL=kitty
export CONSOLE=kitty
export TZ='Europe/Berlin'
export LC_ALL="en_US.UTF-8"

export SSH_AGENT_PID=""
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)
export MONITOR1=eDP1

export CARGO_HOME="/var/cargo"
export RUSTUP_HOME="/var/rust"
export NIMBLE_DIR="/var/nimble"
export GOPATH="/var/go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
export DIRENV_WARN_TIMEOUT=1h
export BAKE_HOME="/home/bresilla/.local/share/bake"

export UBUNTU_PATH="/tent/ubuntu"
export VIM="/usr/share/nvim/"

export PASTEL_COLOR_MODE=24bit
export COLORTERM=truecolor
export BAT_THEME="TwoDark"
export LULE_W="/env/set/.wallpaper"
export LULE_S="/env/dot/.func/wm/lule_colors"
export LULE_C="/home/bresilla/.config/lule/configs.json"

export SCREENSHOT_FILE="/tmp/screenshot_file"

export GRAVEYARD="/tmp/graveyard-$USER"
export BSPM_BIN_DIR="/env/bin"

export WORDLIST="$HOME/.config/dict/wordlist.txt"
export ADJECTIVELIST="$HOME/.config/dict/adjective.txt"
export NOUNLIST="$HOME/.config/dict/noun.txt"
export FANCY=$(printf "%s" $(shuf -n1 $ADJECTIVELIST) "_" $(shuf -n1 $NOUNLIST))
export RANDOM_NAME=$FANCY

export WINEPREFIX=/var/lib/wine
export LIBVA_DRIVER_NAME=iHD
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive
export XDG_CONFIG_HOME=/home/$USER/.config
export XDG_CONFIG_PATH=/home/$USER/.config
export XDG_DATA_HOME=/home/$USER/.local/share
export XDG_DATA_PATH=/home/$USER/.local/share
export XDG_CACHE_HOME=/home/$USER/.cache
export XDG_CACHE_PATH=/home/$USER/.cache

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export IPFS_PATH=/home/bresilla/sync/planetary/ipfs
export GRAVEYARD=/tmp/graveyard-$USER

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

export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export TURTLEBOT3_MODEL=burger



#----------------------------------------------------------------------------

