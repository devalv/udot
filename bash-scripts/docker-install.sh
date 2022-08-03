#!/bin/bash

set -e

echo "uninstall already installed old docker versions"
[ -n "$(which docker)" ] && sudo apt-get remove docker docker-engine docker.io containerd runc

echo "install packages to allow apt to use a repository over HTTPS"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

echo "add Docker’s official GPG key"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "set up the stable docker repository"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "update the apt package index, and install the latest version of Docker Engine"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

echo "create the docker group and add your user"
sudo groupadd -f docker
sudo usermod -aG docker $USER

echo "configure Docker to start on boot"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#echo "install docker desktop"
#sudo apt-get install gnome-terminal
#wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.11.0-amd64.deb && sudo apt-get install ./docker-desktop-4.11.0-amd64.deb && rm docker-desktop-4.11.0-amd64.deb

exit 0
