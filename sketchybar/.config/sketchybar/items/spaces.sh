#!/usr/bin/env sh
sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item "space.$sid" left \
        --subscribe "space.$sid" aerospace_workspace_change \
        --set "space.$sid" \
        icon="$sid"\
        icon.padding_left=0 \
        icon.padding_right=0 \
        icon.font="$FONT:Bold:14.0" \
        icon.color=$WHITE \
        align=center \
        background.color=0x44ffffff \
        background.corner_radius=8 \
        background.height=24 \
        background.width=24 \
        background.padding_right=15 \
        background.align=center \
        background.drawing=off \
        label.drawing=off \
        click_script="aerospace workspace $sid" \
        script="$PLUGIN_DIR/aerospacer.sh $sid"
done
sketchybar   --add item       separator left                          \
             --set separator  icon=                                \
                              icon.font="Hack Nerd Font:Regular:16.0" \
                              icon.padding_left=4                     \
                              background.padding_left=15              \
                              background.padding_right=15             \
                              label.drawing=off                       \
                              associated_display=active               \
                              icon.color=$WHITE                       \
                              click_script="open -a 'Mission Control'"
