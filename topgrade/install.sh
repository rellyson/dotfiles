#!/bin/sh

BASEDIR=$(dirname "$(realpath "$0")")

# Link config file
ln -s "${BASEDIR}"/topgrade.toml "${HOME}"/.config/topgrade.toml
