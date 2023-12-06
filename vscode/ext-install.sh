#!/bin/bash

# extensions to install
extlist=(
  vscode-icons-team.vscode-icons
  vscodevim.vim
  golang.go
  ms-python.python
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-azuretools.vscode-docker
  ms-kubernetes-tools.kind-vscode
  redhat.vscode-yaml
  redhat.vscode-xml
  redhat.ansible
  grafana.vscode-jsonnet
  github.github-vscode-theme
  zguolee.tabler-icons
  formulahendry.code-runner
  vadimcn.vscode-lldb
  usernamehw.errorlens
  aaron-bond.better-comments
  tamasfe.even-better-toml
  mhutchie.git-graph
  mikestead.dotenv
)

for ext in "${extlist[@]}"; do
  codium --install-extension "$ext"
done
