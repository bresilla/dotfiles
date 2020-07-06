#!/bin/sh
mkdir vendor && cd vendor && git clone https://github.com/Microsoft/vcpkg

~/.bin/vcpkg --vcpkg-root $(git rev-parse --show-toplevel)/vendor/vcpkg/ install fmt doctest

