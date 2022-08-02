#!/bin/bash

set -e

echo "Installing core system utils"
apt-get install zsh exa curl wget tmux bpytop bat gnupg \
jsonlint yamllint fzf pwgen vim mc telnet p7zip-full rar \
unrar terminator vlc openssh-client default-jre fonts-firacode -y

exit 0
