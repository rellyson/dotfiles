<div align="center">

<img alt="dotfiles logo" src="assets/dotfile.png">
<h2 align="center">dotfiles</h2>

[![License](https://img.shields.io/badge/License-MIT-b5dc10?style=flat-square)](https://opensource.org/licenses/MIT)
![ansible](https://img.shields.io/badge/Ansible-grey?style=flat-square&logo=ansible)

</div>

This repository contains dotfiles that I use in my daily workflow.

## Using ansible playbooks

All dotfiles are followed by a `playbook.yml` file. You can use it by running one of the commands below:

```sh
# Install extra roles via ansible-galaxy
ansible-galaxy install -r requirements.yml

# Using a inventory file
ansible-playbook <playbook-file> -i <inventory-file>

# Ask for password when using become
ansible-playbook <playbook-file> --ask-become-pass

```

## Tools

- [arkade](https://github.com/alexellis/arkade)
- [ansible](https://docs.ansible.com)
- [flatpak](https://flatpak.org/)
- [git-delta](https://github.com/dandavison/delta)
- [k9s](https://k9scli.io/)
- [k3d](https://github.com/k3d-io/k3d)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [NerdFonts](https://www.nerdfonts.com/)
- [neovim](https://github.com/neovim/neovim)
- [topgrade](https://github.com/topgrade-rs/topgrade)
- [tmux](https://github.com/tmux/tmux)
- [vim](https://www.vim.org/)
- [VSCodium](https://vscodium.com/)
- [wezterm](https://github.com/wez/wezterm)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)