light_or_dark=$(echo "Dark
Wallpaper" | rofi -location 1 -yoffset 0 -width 300 -xoffset 0 -dmenu)
mv $(which wal) /usr/bin
if [ $light_or_dark = "Dark" ] 
then
    selected=$(find $HOME/.dotfiles/wal/colorschemes/dark/ -type f \( -iname "*.json" \) -printf "%f\n" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)

    if [[ -n $selected ]]
    then
        wal --theme $HOME/.dotfiles/wal/colorschemes/dark/$selected
        killall dunst && dunst -mon 1
    fi
elif [ $light_or_dark = "Wallpaper" ] 
then
    wal -i $HOME/.dotfiles/wallpapers/current.png
    killall dunst && dunst -mon 1
fi
