#!/bin/bash

### depends on: imagemagick, i3lock, scrot

IMAGE=/tmp/lockscreen.png

scrot $IMAGE
convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 5% $IMAGE

i3lock -u -i $IMAGE
