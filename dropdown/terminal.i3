for_window [instance="dropdown"] floating enable
for_window [instance="dropdown"] resize set 625 450
for_window [instance="dropdown"] move scratchpad
for_window [instance="dropdown"] border pixel 3
for_window [instance="dropdown"] sticky enable
exec --no-startup-id st -n dropdown

bindsym $mod+t [instance="dropdown"] scratchpad show; [instance="dropdown"] move position center;
