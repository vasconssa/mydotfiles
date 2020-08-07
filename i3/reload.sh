# This is the reload script for i3
# it generates a new config a nd then reload i3

echo > ~/.config/i3/config && 
for f in $HOME/.dotfiles/**/*.i3; do (cat "${f}"; echo) >> ~/.config/i3/config; done &&
echo > ~/.config/polybar/config &&
for f in $HOME/.dotfiles/**/*.polybar; do (cat "${f}"; echo) >> ~/.config/polybar/config; done &&
DISPLAY=:0 i3-msg restart
