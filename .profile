export HOSTNAME=$(uname -n)

export DOTS=$HOME/dots
export SETS=$HOME/sets
export DATA=$HOME/data
export DOWN=$HOME/down
export SYNC=$HOME/sync
export TEMP=/tmp

#PKGCONFIGS
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

#USER_BIN
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/sbin" ]] && PATH="$HOME/.local/sbin:$PATH"
[[ -d $DOTS/.func ]] && for file in $DOTS/.func/*; do [[ -d "$file" ]] && PATH="$file:$PATH"; done

#NVIDIA
[[ -d "/usr/local/cuda" ]] && PATH="/usr/local/cuda/bin:$PATH" LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
[[ -d "/opt/cuda" ]] && PATH="/opt/cuda/bin:$PATH" LD_LIBRARY_PATH="/opt/cuda/lib64:${LD_LIBRARY_PATH}"

#CPP
[[ -d "/env/cpp/bin" ]] && PATH="/env/cpp/bin:$PATH"
#GO
[[ -d "/env/go/bin" ]] && PATH="/env/go/bin:$PATH"
#RUST
[[ -d "/env/cargo/bin" ]] && PATH="/env/cargo/bin:$PATH"
#NIM
[[ -d "/env/nimble/bin" ]] && PATH="/env/nimble/bin:$PATH"

#BLINDSPOT
[[ -d "/env/bin" ]] && PATH="/env/bin:$PATH"

#NIX
# if [ -e /home/bresilla/.nix-profile/etc/profile.d/nix.sh ]; then . /home/bresilla/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export NIX_PATH=${NIX_PATH:+$NIX_PATH:}/nix/channels  # move "~/.nix-defexpr/channels" to "/nix/channels"
[[ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]] && . $HOME/.nix-profile/etc/profile.d/nix.sh;
export NIXPKGS_ALLOW_UNFREE=1

#FLATPAK
FLATPAK_ENABLE_SDK_EXT=rust-nightly

#SECRETS
[[ -e "/home/bresilla/sets/variables" ]] && source /home/bresilla/sets/variables

#ALT
export PATH="$HOME/.local/alt/shims:$PATH"


export BROWSER=firefox
export EDITOR=nvim
export TERMINAL=kitty
export CONSOLE=kitty
export TZ='Europe/Berlin'
export LC_ALL="en_US.UTF-8"

export SSH_AGENT_PID=""
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export GPG_TTY=$(tty)
export MONITOR1=eDP-1
export MONITOR2=DP-1

export CONDA_HOME="/env/conda"
export CARGO_HOME="/env/cargo"
export RUSTUP_HOME="/opt/rustup"
export NIMBLE_DIR="/env/nimble"
export GOPATH="/env/go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
export DIRENV_WARN_TIMEOUT=1h
export BAKE_HOME="/home/bresilla/.local/share/bake"

export UBUNTU_PATH="/tent/ubuntu"
export VIM="/usr/share/nvim/"

export PASTEL_COLOR_MODE=24bit
export COLORTERM=truecolor
export BAT_THEME="TwoDark"
export LULE_W="/home/bresilla/sets/.wallpaper"
export LULE_S="/home/bresilla/dots/.func/wm/lule_colors"
export LULE_C="/home/bresilla/.config/lule/configs.json"

export SCREENSHOT_FILE="/tmp/screenshot_file"

export GRAVEYARD="/tmp/graveyard-$USER"
export BSPM_BIN_DIR="/env/bin"

export WORDLIST="$HOME/.config/dict/wordlist.txt"
export ADJECTIVELIST="$HOME/.config/dict/adjective.txt"
export NOUNLIST="$HOME/.config/dict/noun.txt"
export FANCY=$(printf "%s" $(shuf -n1 $ADJECTIVELIST) "_" $(shuf -n1 $NOUNLIST))

export WINEPREFIX=/var/lib/wine
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

export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
