# Install i3
sudo pacman --noconfirm -S i3-gaps

mkdir .config/i3/
# Generate Config
for f in $HOME/.dotfiles/**/*.i3; do (cat "${f}"; echo) >> $HOME/.config/i3/config; done
