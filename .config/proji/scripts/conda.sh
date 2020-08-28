#!/bin/sh
[[ ! -d "/env/conda/bin" ]] && exit
PATH="/env/conda/bin:$PATH"
conda create --prefix=$PWD/.venv python=3
