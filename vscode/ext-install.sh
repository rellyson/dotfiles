#!/bin/bash

# extensions to install
extlist=(
  vscode-icons-team.vscode-icons
  vscodevim.vim
  ms-python.python
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-azuretools.vscode-docker
  redhat.vscode-yaml
  redhat.vscode-xml
  redhat.ansible
  asciidoctor.asciidoctor-vscode
  jebbs.plantuml
  github.github-vscode-theme
  zguolee.tabler-icons
  formulahendry.code-runner
  vadimcn.vscode-lldb
  hediet.vscode-drawio
  usernamehw.errorlens
  aaron-bond.better-comments
  tamasfe.even-better-toml
)

for ext in "${extlist[@]}"; do
  codium --install-extension "$ext"
done
