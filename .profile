export DOTS=$HOME/dots
export SETS=$HOME/sets
export DATA=$HOME/data
export DOWN=$HOME/down
export SYNC=$HOME/sync

#PKGCONFIGS
export PKG_CONFIG_PATH=/usr/lib/pkgconfig

#USER_BIN
[[ -d "$HOME/.local/bin" ]] && PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.local/sbin" ]] && PATH="$HOME/.local/sbin:$PATH"
[[ -d $DOTS/.func ]] && for file in $DOTS/.func/*; do [[ -d "$file" ]] && PATH="$file:$PATH"; done

#CPP
[[ -d "/env/cpp/bin" ]] && PATH="/env/cpp/bin:$PATH"
#GO
[[ -d "/env/go/bin" ]] && PATH="/env/go/bin:$PATH"
#RUST
[[ -d "/env/cargo/bin" ]] && PATH="/env/cargo/bin:$PATH"
#NIM
[[ -d "/env/nimble/bin" ]] && PATH="/env/nimble/bin:$PATH"

#NIX
export NIX_PATH=${NIX_PATH:+$NIX_PATH:}/nix/channels  # move "~/.nix-defexpr/channels" to "/nix/channels"
[[ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]] && . $HOME/.nix-profile/etc/profile.d/nix.sh;
export NIXPKGS_ALLOW_UNFREE=1

#SECRETS
[[ -e "/home/bresilla/sets/variables" ]] && source /home/bresilla/sets/variables

#ALT
export PATH="$HOME/.local/alt/shims:$PATH"


export BROWSER=firefox
export EDITOR=nvim
export TERMINAL=kitty
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
export BAT_THEME="GitHub"
export LULE_W="/home/bresilla/sets/.wallpaper"
export LULE_S="/home/bresilla/dots/.func/wm/colupd"
export LULE_C="/home/bresilla/.config/lule/configs.json"
export FOREGROUND=$(xrdb -query | grep 'foreground:'| awk 'NR==1{print $NF}')
export BACKGROUND=$(xrdb -query | grep 'background:'| awk 'NR==1{print $NF}')
export BLACK=$(xrdb -query | grep 'color0:'| awk 'NR==1{print $NF}')
export RED=$(xrdb -query | grep 'color1:'| awk 'NR==1{print $NF}')
export GREEN=$(xrdb -query | grep 'color2:'| awk 'NR==1{print $NF}')
export YELLOW=$(xrdb -query | grep 'color3:'| awk 'NR==1{print $NF}')
export BLUE=$(xrdb -query | grep 'color4:'| awk 'NR==1{print $NF}')
export MAGENTA=$(xrdb -query | grep 'color5:'| awk 'NR==1{print $NF}')
export CYAN=$(xrdb -query | grep 'color6:'| awk 'NR==1{print $NF}')
export WHITE=$(xrdb -query | grep 'color7:'| awk 'NR==1{print $NF}')

export WINEPREFIX=/wine
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
