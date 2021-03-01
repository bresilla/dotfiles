#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

interpolation=('\#H' '\#{hostname_short}' '\#U' '\#\{pane_ssh_port\}' '\#\{pane_ssh_connected\}')
script=("#($CURRENT_DIR/scripts/hostname.sh)" "#($CURRENT_DIR/scripts/hostname_short.sh)" "#($CURRENT_DIR/scripts/whoami.sh)" "#($CURRENT_DIR/scripts/port.sh)" "#($CURRENT_DIR/scripts/pane_ssh_connected.sh)")


source $CURRENT_DIR/scripts/shared.sh

do_interpolation() {
    local interpolated=$1
    local j=0

    for i in "${interpolation[@]}"; do
        local s=${script[$j]}
        local interpolated=${interpolated//$i/$s}
        ((j+=1))
    done
    echo "$interpolated"
}

update_tmux_option() {
	local option=$1
	local option_value=$(get_tmux_option "$option")
	local new_option_value=$(do_interpolation "$option_value")
	set_tmux_option "$option" "$new_option_value"
}

main() {
	update_tmux_option "status-right"
	update_tmux_option "status-left"
}

main
