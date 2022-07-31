#!/bin/bash

set -e

echo "Installing core system utils"
sudo apt-get install snapd zsh exa curl wget tmux htop bpytop bat gnupg \
jsonlint yamllint fzf nmap pwgen vim mc telnet p7zip-full rar \
unrar terminator gnome-tweaks vlc openvpn openssh-client \
default-jre fonts-firacode thefuck -y

exit 0