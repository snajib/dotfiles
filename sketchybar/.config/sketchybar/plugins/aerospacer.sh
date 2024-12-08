#!/bin/bash

sid=$1
focused=$(aerospace list-workspaces --focused | head -n1)

if [ "$sid" = "$focused" ]; then
    sketchybar --set space.$sid background.drawing=on width=30
else
    sketchybar --set space.$sid background.drawing=off width=24
fi
