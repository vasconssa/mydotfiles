# All programs which should start at the beginning should be put here

exec --no-startup-id compton --config /home/vasconssa/.config/compton.conf --vsync
#exec --no-startup-id lock.sh
exec --no-startup-id nm-applet &
exec --no-startup-id pasystray &
exec --no-startup-id xsettingsd &

exec_always --no-startup-id $HOME/.dotfiles/polybar/launch.sh

exec --no-startup-id hsetroot -full ~/Pictures/wallpaper/discover.jpg

exec --no-startup-id dunst --mon 1

exec --no-startup-id unclutter


