# Install i3
sudo pacman --noconfirm -S i3-gaps

mkdir -p .config/i3/
# Generate Config
mkdir $HOME/.config/i3
mkdir $HOME/.config/polybar
source i3/reload.sh
