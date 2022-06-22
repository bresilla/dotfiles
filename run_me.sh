#! /usr/bin/env bash


[[ -d "/env" ]] && ENVY="/env" || ENVY="$HOME/env"

ln -sf $ENVY/dot/.config/* $HOME/.config
ln -sf $ENVY/dot/.{aliases,bashrc,func,profile,startup,xinitrc,Xmodmap,zshrc} $HOME
