#!/bin/sh

# Run all system xinitrc scripts
for file in /etc/X11/xinit/xinitrc.d/*; do
    . $file
done

xrandr --output HDMI-2 --auto --above eDP-1

DEVICE="Synaptics TM3072-003"
xinput set-prop "$DEVICE" "libinput Tapping Enabled" 1
xinput set-prop "$DEVICE" "libinput Natural Scrolling Enabled" 1
xinput set-prop "$DEVICE" "libinput Disable While Typing Enabled" 0

setxkbmap -option caps:escape

exec i3
