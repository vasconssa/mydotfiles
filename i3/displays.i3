set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate, (r) reboot, (Shift+s) shutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id $Locker, mode "default"
    bindsym e exec --no-startup-id i3-msg exit, mode "default"
    bindsym s exec --no-startup-id $Locker && systemctl suspend, mode "default"
    bindsym h exec --no-startup-id $Locker && systemctl hibernate, mode "default"
    bindsym r exec --no-startup-id systemctl reboot, mode "default"
    bindsym Shift+s exec --no-startup-id systemctl poweroff -i, mode "default"  

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

bindsym $mod+shift+p mode "$mode_system"
## Manual management of external displays
# Set the shortcuts and what they do
set $mode_display Ext Screen (v) VGA ON, (h) HDMI ON, (x) VGA OFF, (y) HDMI OFF
mode "$mode_display" {
    bindsym v exec --no-startup-id xrandr --output VGA1 --auto --right-of eDP-1-1, mode "default"
    bindsym h exec --no-startup-id xrandr --output HDMI-1-1 --auto --above eDP-1-1, mode "default"
    bindsym x exec --no-startup-id xrandr --output VGA1 --auto --off, mode "default"
    bindsym y exec --no-startup-id xrandr --output HDMI-1-1 --auto --off, mode "default"

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
# Declare here the shortcut to bring the display selection menu
bindsym $mod+x mode "$mode_display"
bindsym $mod+u move workspace to output up
bindsym $mod+i move workspace to output up
bindsym $mod+o move workspace to output left
bindsym $mod+p move workspace to output right
