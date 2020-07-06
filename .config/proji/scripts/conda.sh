#!/bin/sh
[[ ! -d "/opt/conda/bin" ]] && exit
PATH="/opt/conda/bin:$PATH"
conda create --prefix=$PWD/.direnv python=3.7
