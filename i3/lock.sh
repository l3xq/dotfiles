#!/bin/sh
scrot /tmp/screen.png
convert /tmp/screen.png -paint 1 /tmp/screen.png
convert /tmp/screen.png ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -e -i /tmp/screen.png

