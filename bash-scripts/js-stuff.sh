#!/bin/bash

set -e

echo "Installing Nodejs 18 LTS"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v

exit 0
