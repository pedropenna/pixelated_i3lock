#!/bin/bash
scrot /tmp/pixelated_locked_screen.png
convert /tmp/pixelated_locked_screen.png -scale 10% -scale 1000% /tmp/pixelated_locked_screen.png
[[ -f $1 ]] && convert /tmp/pixelated_locked_screen.png $1 -gravity center -composite -matte /tmp/pixelated_locked_screen.png
i3lock -e -u -i /tmp/pixelated_locked_screen.png
rm /tmp/pixelated_locked_screen.png
