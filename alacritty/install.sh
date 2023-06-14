#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# Link config file
ln -s "${BASEDIR}"/alacritty.yml "${HOME}"/.config/alacritty/alacritty.yml

# Get roxo-theme colorscheme
wget https://raw.githubusercontent.com/roxo-theme/alacritty/main/colorscheme.yml \
	-O "${HOME}"/.config/alacritty/colorscheme.yml
