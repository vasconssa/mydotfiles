for_window [instance="zeal"] floating enable
for_window [instance="zeal"] resize set 1200 768
for_window [instance="zeal"] move scratchpad
for_window [instance="zeal"] border pixel 3
for_window [instance="zeal"] sticky enable
exec --no-startup-id zeal

bindsym $mod+y [instance="zeal"] scratchpad show; [instance="zeal"] move position center;
