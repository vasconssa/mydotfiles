light_or_dark=$(echo "Dark
Wallpaper" | rofi -location 1 -yoffset 0 -width 300 -xoffset 0 -dmenu)
mv $(which wal) /usr/bin
if [ $light_or_dark = "Dark" ] 
then
    selected=$(find $DOTFILES/wal/colorschemes/dark/ -type f \( -iname "*.json" \) -printf "%f\n" | rofi -location 1 -yoffset 4 -width 300 -xoffset 4 -dmenu)

    if [[ -n $selected ]]
    then
        wal --theme $DOTFILES/wal/colorschemes/dark/$selected
        cat $HOME/.cache/wal/colors.conky $DOTFILES/conky/conky-text > $DOTFILES/conky/conkyrc
        killall dunst && dunst -mon 1
    fi
elif [ $light_or_dark = "Wallpaper" ] 
then
    wal -i $DOTFILES/wallpapers/current.png
    cat $HOME/.cache/wal/colors.conky $DOTFILES/conky/conky-text > $DOTFILES/conky/conkyrc
    killall dunst && dunst -mon 1
fi
