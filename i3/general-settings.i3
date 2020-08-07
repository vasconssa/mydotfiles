
# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono Nerd Font Complete 12

# Gaps
#gaps inner 15
#gaps outer 15

# General variables
set $mod Mod4
set $super Mod4
set $alt Mod1
set $term 	st
#set $term 	xfce4-terminal
set $shutdown 	sudo -A shutdown -h now
set $reboot 	sudo -A reboot


#                       border              background         text                 indicator
client.focused          $darkblack          $darkblack         $white	            $darkred
client.unfocused        $darkblack          $darkblack         $darkwhite           $darkred
client.focused_inactive $darkblack 	        $darkblack	       $darkwhite	        $darkred
client.urgent           $darkred            $darkred 	       $white	            $darkred

for_window [class=".*"] border pixel 0
hide_edge_borders both

# window rules, you can find the window class using xprop
#for_window [class=".*"] border pixel 4
#assign [class=URxvt] 1
assign [class=Firefox|Transmission-gtk] $ws2
assign [class=Calibre] $ws4
assign [class=Godot] $ws5
#assign [class=Thunar|File-roller] 3
#assign [class=Geany|Evince|Gucharmap|Soffice|libreoffice*] 4
#assign [class=Audacity|Vlc|mpv|Ghb|Xfburn|Gimp*|Inkscape] 5
#assign [class=Lxappearance|System-config-printer.py|Lxtask|GParted|Pavucontrol|Exo-helper*|Lxrandr|Arandr] 6
for_window [class=Viewnior|feh|Audacious|File-roller|Lxappearance|Lxtask|Pavucontrol] floating enable
for_window [instance="Godot_Engine"] floating enable
for_window [instance="Vulkan Tutorial"] floating enable
assign [class="Vulkan Tutorial"] floating enable
for_window [instance="Godot_Editor"] floating disable
#for_window [class=URxvt|Firefox|Geany|Evince|Soffice|libreoffice*|mpv|Ghb|Xfburn|Gimp*|Inkscape|Vlc|Lxappearance|Audacity] focus
#for_window [class=Xfburn|GParted|System-config-printer.py|Lxtask|Pavucontrol|Exo-helper*|Lxrandr|Arandr] focus
for_window [workspace="9"] floating enable

