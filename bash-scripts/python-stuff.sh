#!/bin/bash

set -e

echo "set python3 as default if not installed"
[ -z "$(dpkg -s python-is-python3)" ] && sudo apt install python-is-python3 -y

echo "installing pyenv additionals"
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev gcc


echo "removing existing pyenv installation"
rm -rf /home/$USER/.pyenv

echo "installing pyenv"
curl https://pyenv.run | bash

echo "installing python 3.10.5 via pyenv"
/home/$USER/.pyenv/bin/pyenv install 3.10.5 -s

echo "Set Python 3.10.5 as global interpeter"
/home/$USER/.pyenv/bin/pyenv global 3.10.5

echo "installing poetry"
[ -z "$(dpkg -s poetry)" ] && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

echo "add poetry completion for zsh"
mkdir $ZSH_CUSTOM/plugins/poetry
~/.poetry/bin/poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry

exit 0
