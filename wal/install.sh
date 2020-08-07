yay --noconfirm -S python-pywal
xrdb -remove *
mkdir $HOME/.config/wal
rm -rf $HOME/.config/wal/colorschemes
rm -rf $HOME/.config/wal/templates
ln -s $HOME/.dotfiles/wal/colorschemes $HOME/.config/wal/
ln -s $HOME/.dotfiles/wal/templates $HOME/.config/wal/
#cp -r $HOME/.dotfiles/wal/vs-wal $HOME/.vscode-oss/extensions/

wal --theme ~/.dotfiles/wal/colorschemes/dark/dracula.json

#ln -sf $HOME/.cache/wal/vscode.json $HOME/.vscode-oss/extensions/vs-wal/themes/vs-wal-color-theme.json
ln -sf $HOME/.cache/wal/dunstrc $HOME/.config/dunst/dunstrc
