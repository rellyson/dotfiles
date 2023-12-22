#!/bin/bash

# extensions to install
extlist=(
  rellyson.roxo-theme-vscode
  vscode-icons-team.vscode-icons
  vscodevim.vim
  golang.go
  ms-python.python
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-azuretools.vscode-docker
  redhat.vscode-yaml
  redhat.vscode-xml
  redhat.ansible
  redhat.java
  vscjava.vscode-java-dependency
  grafana.vscode-jsonnet
  zguolee.tabler-icons
  formulahendry.code-runner
  vadimcn.vscode-lldb
  usernamehw.errorlens
  aaron-bond.better-comments
  christian-kohler.path-intellisense
  tamasfe.even-better-toml
  mhutchie.git-graph
  mikestead.dotenv
  waderyan.gitblame
)

for ext in "${extlist[@]}"; do
  codium --install-extension "$ext"
done
