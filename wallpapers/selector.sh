selected=$(find $HOME/.dotfiles/wallpapers -type f \( -iname "*.png" -and ! -iname "current.png" \) -printf "%f\n" | rofi -dmenu  -location 1 -yoffset 0 -width 300 -xoffset 0)

rm -f $HOME/.dotfiles/wallpapers/current.png
cp $HOME/.dotfiles/wallpapers/$selected $HOME/.dotfiles/wallpapers/current.png
feh --bg-scale $HOME/.dotfiles/wallpapers/current.png
