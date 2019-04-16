# Install rofi
yay --noconfirm -S rofi
mkdir $HOME/.config/rofi
# symlink
echo "rofi.theme: $HOME/.cache/wal/colors.rofi" > $HOME/.config/rofi/config