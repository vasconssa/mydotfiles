for_window [instance="rangerdropdown"] floating enable
for_window [instance="rangerdropdown"] resize set 625 450
for_window [instance="rangerdropdown"] move scratchpad
for_window [instance="rangerdropdown"] border pixel 3
for_window [instance="rangerdropdown"] sticky enable
exec --no-startup-id st -n rangerdropdown -e ranger

bindsym $mod+Shift+f [instance="rangerdropdown"] scratchpad show; [instance="rangerdropdown"] move position center;
