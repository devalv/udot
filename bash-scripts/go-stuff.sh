#!/bin/bash

set -e

echo "installing golang"
sudo apt-get install golang -y

echo "installing goimports"
go install golang.org/x/tools/cmd/goimports@latest

exit 0
