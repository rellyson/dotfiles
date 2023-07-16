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
  asciidoctor.asciidoctor-vscode
  github.github-vscode-theme
  formulahendry.code-runner
  vadimcn.vscode-lldb
  hediet.vscode-drawio
  usernamehw.errorlens
  aaron-bond.better-comments
  coenraads.bracket-pair-colorizer
)

for ext in "${extlist[@]}"; do
  codium --install-extension "$ext"
done
