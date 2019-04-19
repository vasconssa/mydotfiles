#!/bin/bash

sudo chmod +x $HOME/.dotfiles/*.sh
sudo chmod +x $HOME/.dotfiles/**/*.sh

. distro.sh
. packages.sh
. helpers.sh

echo_info "Installing packages..."
_install core

_run_install_files
. special_installs
