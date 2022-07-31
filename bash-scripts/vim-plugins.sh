#!/bin/bash

set -e

echo "deleting existing vim plugins"
rm -rf ~/.vim/bundle 

echo "installing vim plugin manager"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "installing vim plugins"
echo | echo | vim +PluginInstall +qall &>/dev/null

exit 0
