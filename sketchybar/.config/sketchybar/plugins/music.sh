#!/bin/bash
PLAYING=0

if [ "$(osascript -e 'if application "Music" is running then return 0')" == "0" ]; then
    PLAYING=$(osascript -e 'tell application "Music" to set playing to player state is playing')
    TRACK=$(osascript -e 'tell application "Music" to get name of current track')
    ARTIST=$(osascript -e 'tell application "Music" to get artist of current track')
    
    if [ "$TRACK" == "" ]; then
        sketchybar --set $NAME label="Not Playing" icon=􀑪
        exit 0
    fi
    
    if [ "$PLAYING" == "true" ]; then
        sketchybar --set music.play icon=􀊆
    else
        sketchybar --set music.play icon=􀊄
    fi
    
    sketchybar --set $NAME label="$TRACK - $ARTIST" icon=􀑪
else
    sketchybar --set $NAME label="Music Not Running" icon=􀑪
fi
