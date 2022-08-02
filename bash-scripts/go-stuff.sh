#!/bin/bash

set -e

echo "installing golang"
#TODO: install from https://go.dev/dl/
#sudo apt-get install golang -y

echo "installing goimports"
go install golang.org/x/tools/cmd/goimports@latest

exit 0
