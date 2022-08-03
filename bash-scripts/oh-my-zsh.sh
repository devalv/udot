#!/bin/bash

set -e

rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

exit 0