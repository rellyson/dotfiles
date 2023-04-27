#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# Link config file
ln -s "${BASEDIR}"/alacritty.yml "${HOME}"/.config/alacritty/alacritty.yml
ln -s "${BASEDIR}"/colorscheme.yml "${HOME}"/.config/alacritty/colorscheme.yml
