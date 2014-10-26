#!/usr/bin/env bash

# Adds anaconda to path
export PATH="/home/paul/anaconda/bin:$PATH"

# check if argument supplied and use argument to activate environment
if [ -n "$1" ]
then
	source activate $1
fi

if [ -n "$2" ]
then
    echo "Running: ${@:2}"
    eval "${@:2}"
fi
