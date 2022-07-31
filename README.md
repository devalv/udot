# Aleksei Devyatkin`s dotfiles

This is a bootstrap of my working setup based on Ubuntu linux.
Bootstrap is based on the awesome [Dotbot](https://github.com/anishathalye/dotbot).

## Installation

Basic use case is running on clean system installation.

```shell
sudo apt-get install git -y && git clone https://github.com/devalv/udot .dotfiles && cd .dotfiles && ./install
```

## Notes

### Package manager
Core aps will be installed using **apt**, others by [snap](https://snapcraft.io/docs/getting-started).

### Shell and Term
The term is [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/).
The shell is [Zsh](https://www.zsh.org) with oh-my-zsh (https://ohmyz.sh). 
The font is [FiraCode](https://github.com/tonsky/FiraCode).

### Editors
The default console editor is **vim**.

### Python
* [pyenv](https://github.com/pyenv/pyenv) with **3.10.5** as global default
* [poetry](https://python-poetry.org/)

### Go
* Golang from ubuntu repo (1.18)
* Goimports

### Js
TODO: add later
