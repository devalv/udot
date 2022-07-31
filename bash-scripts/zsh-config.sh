#!/bin/bash

set -e

#chsh -s /bin/zsh || chsh -s $(which zsh)
#ohmyzsh will ask to install zsh as default shell
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

exit 0