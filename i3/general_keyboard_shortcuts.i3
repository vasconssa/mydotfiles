# Basic Bindings
bindsym	$mod+Return		    exec $term
#bindsym $mod+Shift+e 		exec prompt "Exit i3" "i3-msg exit"
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"
bindsym Mod1+q			    [con_id="__focused__" instance="^(?!dropdown|pythonshell|conky-quickview|rangerdropdown).*$"] kill
bindsym $mod+Shift+c		exec $HOME/.dotfiles/i3/reload.sh
bindsym $mod+Shift+r		restart
#bindsym $mod+d			    exec rofi -show drun -padding 80 -bw 0 -lines 8 -width 100% -location 1 -show-icons 
bindsym $mod+Shift+x		exec i3lock-fancy -n -p
bindsym $mod+m			    move workspace to output left
bindsym $mod+Shift+d exec i3-dmenu-desktop --dmenu="dmenu -i -fn 'Noto Sans:size=8'"
bindsym $mod+d exec rofi -show drun

# Make the currently focused window a scratchpad
bindsym $mod+Shift+minus move scratchpad

# Show the first scratchpad window
bindsym $mod+minus scratchpad show

# kill focused window
bindsym $super+c kill
bindsym $mod+F4 kill

bindsym Print exec scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f ~/Pictures/'
bindsym Control+Print exec gnome-screenshot -i


# layout
bindsym $mod+s			    layout stacking
bindsym $mod+w			    layout tabbed
bindsym	$mod+e			    layout toggle split
bindsym $mod+f			    fullscreen toggle
bindsym $mod+v			    split toggle
bindsym $mod+space 		    focus mode_toggle
bindsym $mod+Shift+space	floating toggle

# change focus
bindsym $mod+h 			    focus left
bindsym $mod+j			    focus down
bindsym $mod+k 			    focus up
bindsym $mod+l		 	    focus right
bindsym $mod+Left 		    focus left
bindsym $mod+Down 		    focus down
bindsym $mod+Up 		    focus up
bindsym $mod+Right 		    focus right

# move focused window
bindsym $mod+Shift+h 		move left
bindsym $mod+Shift+j 		move down
bindsym $mod+Shift+k 		move up
bindsym $mod+Shift+l	 	move right
bindsym $mod+Shift+Left 	move left
bindsym $mod+Shift+Down 	move down
bindsym $mod+Shift+Up 		move up
bindsym $mod+Shift+Right 	move right

# floating move with mouse and $mod
floating_modifier $mod

# Media Controls
bindsym $mod+F2             exec playerctl play-pause
bindsym $mod+F1             exec playerctl previous
bindsym $mod+F3             exec playerctl next

# Gaps
bindsym $mod+Mod1+plus      gaps inner current plus 5
bindsym $mod+Mod1+minus     gaps inner current minus 5


# Volume
#bindsym $mod+F9                 exec pulsemixer --change-volume -5
#bindsym $mod+F10                exec pulsemixer --change-volume +5
#bindsym XF86AudioRaiseVolume    exec pulsemixer --change-volume +5
#bindsym XF86AudioLowerVolume    exec pulsemixer --change-volume -5
#bindsym XF86AudioMute           exec pulsemixer --mute
# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

#brightness controls
bindsym XF86MonBrightnessUp exec light -A 10
bindsym XF86MonBrightnessDown exec light -U 10



