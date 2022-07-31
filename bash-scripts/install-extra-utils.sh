#!/bin/bash

set -e

echo "Installing Lens"
wget -q https://downloads.k8slens.dev/ide/Lens-6.0.0-latest.20220728.2.amd64.deb 
sudo dpkg -i Lens-6.0.0-latest.20220728.2.amd64.deb
rm Lens-6.0.0-latest.20220728.2.amd64.deb

echo "Installing Google Chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update && sudo apt-get install google-chrome-stable -y

exit 0
