yay --noconfirm -S code

code --install-extension ms-python.python
code --install-extension oderwat.indent-rainbow
code --install-extension 2gua.rainbow-brackets
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension vscodevim.vim
code --install-extension eamodio.gitlens
code --install-extension pkief.material-icon-theme
code --install-extension peterjausovec.vscode-docker
code --install-extension donjayamanne.jupyter
code --install-extension batisteo.vscode-django
code --install-extension azaugg.vscode-python-docstring
code --install-extension deerawan.vscode-dash
code --install-extension njpwerner.autodocstring
code --install-extension neuron.neuron-ipe

mkdir $HOME/.config/vscode
ln -sf $HOME/.dotfiles/vscode/settings.json $HOME/.config/Code\ -\ OSS/User/settings.json
ln -sf $HOME/.dotfiles/vscode/keybindings.json $HOME/.config/Code\ -\ OSS/User/keybindings.json
