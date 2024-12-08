#!/usr/bin/env sh

# Add items from bottom to top

# Bottom group 
# Clock (bottom)
sketchybar --add item time right \
          --set time update_freq=1 \
                   script="$PLUGIN_DIR/time.sh" \
                   icon.drawing=off \
                   label.color=$WHITE

# Battery (above clock) 
sketchybar --add item battery right \
          --set battery update_freq=120 \
                      script="$PLUGIN_DIR/battery.sh" \
                      label.drawing=off \
                      icon.color=$WHITE \
                      padding_left=10

# Add big gap between groups
sketchybar --add item spacer right \
          --set spacer icon="" \
                    icon.color=$WHITE \
                    label.drawing=off \
                    padding_left=50

# Top group
# Terminal (below music)
sketchybar --add item iterm right \
          --set iterm icon=⌘ \
                    icon.color=$WHITE \
                    label.drawing=off \
                    click_script="open -a iTerm" \
                    padding_left=10

# Music widget (topmost)
sketchybar --add item music right \
          --set music icon=♫ \
                    icon.color=$WHITE \
                    label.drawing=off \
                    click_script="open -a Music" \
                    padding_left=10
