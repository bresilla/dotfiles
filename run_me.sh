#! /usr/bin/env bash


[[ -d "/env" ]] && ENVY="/env" || echo "/$HOME not set"
[[ ! -d "$HOME/.config" ]] && mkdir -p $HOME/.config

ln -sf $ENVY/dot/.config/* $HOME/.config
ln -sf $ENVY/dot/.{aliases,bashrc,func,profile,startup,xinitrc,Xmodmap,zshrc} $HOME
