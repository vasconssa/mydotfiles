#!/bin/bash

find $HOME/.dotfiles/ -exec chmod +x {} \;

. distro.sh
. packages.sh
. helpers.sh

echo_info "Installing packages..."
_install core

_run_install_files
. special_installs
