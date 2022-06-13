#! /usr/bin/env bash

ls -sf /env/dot/.config/* $HOME/.config
ln -sf /env/dot/.{aliases,bashrc,func,profile,startup,xinitrc,Xmodmap,zshrc} $HOME
