#!/bin/bash

set -e

echo "Installing core system utils"
apt-get install zsh exa curl wget tmux bpytop bat gnupg \
jsonlint yamllint fzf pwgen neovim mc telnet p7zip-full rar \
unrar terminator vlc openssh-client default-jre duf \
fonts-firacode -y

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

exit 0
