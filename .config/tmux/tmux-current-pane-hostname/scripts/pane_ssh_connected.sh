#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $CURRENT_DIR/shared.sh

main() {
  if ssh_connected; then
      echo 1
  else
      echo 0
  fi
}

main
