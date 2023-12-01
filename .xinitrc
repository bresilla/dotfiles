#!/bin/sh

systemctl --user import-environment DISPLAY XAUTHORITY DBUS_SESSION_BUS_ADDRESS
if command -v dbus-update-activation-environment >/dev/null 2>&1; then
    # dbus-update-activation-environment DISPLAY XAUTHORITY 
    dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
# eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

export GTK_USE_PORTAL=1
# eval "$(dbus-launch --sh-syntax --exit-with-session)"

#gpg things
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent

xmodmap $HOME/.Xmodmap &

export XDG_CURRENT_DESKTOP=i3
exec bspwm
