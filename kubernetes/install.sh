#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# k9s config
mkdir -p "${HOME}"/.config/k9s
ln -s "${BASEDIR}"/k9s/config.yml "${HOME}"/.config/k9s/config.yml
ln -s "${BASEDIR}"/k9s/skin.yml "${HOME}"/.config/k9s/skin.yml
