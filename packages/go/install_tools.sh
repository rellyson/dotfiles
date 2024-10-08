#!/bin/bash

# Golang debuuger
go install github.com/go-delve/delve/cmd/dlv@latest

# Air hot reloading
go install github.com/air-verse/air@latest

# Golang CI lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.61.0

# Go Callvis
go install github.com/ofabry/go-callvis@latest

# Gosec
go install github.com/securego/gosec/v2/cmd/gosec@latest

# Tilt Dev
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
