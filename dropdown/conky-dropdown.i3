exec --no-startup-id $DOTFILES/conky/start_conky.sh
for_window [instance="conky-quickview"] floating enable
for_window [instance="conky-quickview"] resize set 880 530
for_window [instance="conky-quickview"] move scratchpad
for_window [instance="conky-quickview"] sticky enable

bindsym $mod+c [instance="conky-quickview"] scratchpad show, move position center;

