#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# k9s config
mkdir -p "${HOME}"/.config/k9s
ln -s "${BASEDIR}"/skin.yml "${HOME}"/.config/k9s/skin.yml
