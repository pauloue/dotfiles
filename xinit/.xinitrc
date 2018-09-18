#!/bin/sh

# Run all system xinitrc scripts
for file in /etc/X11/xinit/xinitrc.d/*; do
    . $file
done

DEVICE="ETPS/2 Elantech Touchpad"
xinput set-prop "$DEVICE" "libinput Tapping Enabled" 1
xinput set-prop "$DEVICE" "libinput Natural Scrolling Enabled" 1
xinput set-prop "$DEVICE" "libinput Disable While Typing Enabled" 0

setxkbmap -option caps:escape

xsetroot -solid "#222222"
exec gnome-session
