#!/bin/bash

# Pyenv install
curl https://pyenv.run | bash

# Install required packages
sudo dnf install openssl openssl-devel zlib zlib-devel bzip2-devel ncurses-devel libffi libffi-devel readline-devel readline sqlite3 tk-devel \
lzma-sdk-devel sqlite sqlite-devel

