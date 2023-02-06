#!/bin/sh

dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# eval "$(dbus-launch --sh-syntax --exit-with-session)"

#gpg things
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent

xmodmap $HOME/.Xmodmap &
exec bspwm
