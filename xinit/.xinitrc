#!/bin/sh

# run all system xinitrc scripts
for file in /etc/X11/xinit/xinitrc.d/*; do
    . $file
done

DEVICE="ETPS/2 Elantech Touchpad"
# enable tapping
xinput set-prop "$DEVICE" 277 1
# enable natural scrolling
xinput set-prop "$DEVICE" 285 1
# disable DWT
xinput set-prop "$DEVICE" 299 0

setxkbmap -option caps:escape

xsetroot -solid "#222222"
exec i3
