#!/bin/bash

set -e

echo "set python3 as default if not installed"
[ -z "$(dpkg -s python-is-python3)" ] && sudo apt install python-is-python3 -y

echo "installing pyenv additionals"
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev make make gcc curl

echo "installing pyenv"
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

#echo "installing python 3.10.5 via pyenv"
#/home/$USER/.pyenv/bin/pyenv install 3.10.5 -s

#echo "Set Python 3.10.5 as global interpeter"
#/home/$USER/.pyenv/bin/pyenv global 3.10.5

exit 0
