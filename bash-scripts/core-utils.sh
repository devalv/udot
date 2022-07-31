#!/bin/bash

set -e

[ -z "$(dpkg -s snapd)" ] && apt install snapd -y
[ -z "$(dpkg -s zsh)" ] && apt install zsh -y
[ -z "$(dpkg -s exa)" ] && apt install exa -y
[ -z "$(dpkg -s curl)" ] && apt install curl -y
[ -z "$(dpkg -s wget)" ] && apt install wget -y 
[ -z "$(dpkg -s tmux)" ] && apt install tmux -y
[ -z "$(dpkg -s htop)" ] && apt install htop -y
[ -z "$(dpkg -s bpytop)" ] && apt install bpytop -y
[ -z "$(dpkg -s bat)" ] && apt install bat -y
[ -z "$(dpkg -s gnupg)" ] && apt install gnupg -y
[ -z "$(dpkg -s jsonlint)" ] && apt install jsonlint -y
[ -z "$(dpkg -s yamllint)" ] && apt install yamllint -y
[ -z "$(dpkg -s fzf)" ] && apt install fzf -y
[ -z "$(dpkg -s nmap)" ] && apt install nmap -y
[ -z "$(dpkg -s pwgen)" ] && apt install pwgen -y
[ -z "$(dpkg -s vim)" ] && apt install vim -y 
[ -z "$(dpkg -s mc)" ] && apt install mc -y
[ -z "$(dpkg -s siege)" ] && apt install siege -y
[ -z "$(dpkg -s telnet)" ] && apt install telnet -y
[ -z "$(dpkg -s p7zip-full)" ] && apt install p7zip-full -y
[ -z "$(dpkg -s rar)" ] && apt install rar -y
[ -z "$(dpkg -s unrar)" ] && apt install unrar -y
[ -z "$(dpkg -s terminator)" ] && apt install terminator -y
[ -z "$(dpkg -s gnome-tweaks)" ] && apt install gnome-tweaks -y
[ -z "$(dpkg -s vlc)" ] && apt install vlc -y
[ -z "$(dpkg -s openvpn)" ] && apt install openvpn -y
[ -z "$(dpkg -s openssh-client)" ] && apt install openssh-client -y
[ -z "$(dpkg -s default-jre)" ] && apt install default-jre -y
[ -z "$(dpkg -s fonts-firacode)" ] && apt-get install fonts-firacode -y
[ -z "$(dpkg -s thefuck)" ] && apt-get install thefuck -y

exit 0