for_window [instance="pythonshell"] floating enable
for_window [instance="pythonshell"] resize set 625 450
for_window [instance="pythonshell"] move scratchpad
for_window [instance="pythonshell"] border pixel 3
for_window [instance="pythonshell"] sticky enable
exec --no-startup-id st -n pythonshell -e python

bindsym $mod+p [instance="pythonshell"] scratchpad show; [instance="pythonshell"] move position center;
