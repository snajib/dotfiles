#!/bin/bash

# Music controls plugin
sketchybar --add item music.controls.prev popup.music.controls \
           --set music.controls.prev icon=􀊎 \
                                    icon.padding_left=5 \
                                    icon.padding_right=5 \
                                    click_script="osascript -e 'tell application \"Music\" to previous track'"

sketchybar --add item music.controls.play popup.music.controls \
           --set music.controls.play icon=􀊈 \
                                    icon.padding_left=5 \
                                    icon.padding_right=5 \
                                    click_script="osascript -e 'tell application \"Music\" to playpause'"

sketchybar --add item music.controls.next popup.music.controls \
           --set music.controls.next icon=􀊐 \
                                    icon.padding_left=5 \
                                    icon.padding_right=5 \
                                    click_script="osascript -e 'tell application \"Music\" to next track'"
