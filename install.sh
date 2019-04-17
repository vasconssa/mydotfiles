#!/bin/bash

sudo chmod +x $HOME/.dotfiles/*.sh
sudo chmod +x $HOME/.dotfiles/**/*.sh

. distro.sh
. packages.sh
. helpers.sh

# Install packages in the official repositories
# echo_info "Installing core packages..."
# _install core

# Install packages in the AUR
# echo_info "Installing aur packages..."
# _install aur

_symlink
