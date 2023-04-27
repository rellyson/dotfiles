#!/bin/bash

BASEDIR=$(dirname "$(realpath "$0")")

# Install plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Link config file
ln -s "${BASEDIR}"/tmux.conf "${HOME}"/.tmux.conf
