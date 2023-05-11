#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# Link config file
mkdir -p "${HOME}"/.config/yamllint
ln -s "${BASEDIR}"/config "${HOME}"/.config/yamllint/config
