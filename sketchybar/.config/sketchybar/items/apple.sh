#!/usr/bin/env sh
POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

# Create event handler script
cat > "$PLUGIN_DIR/apple_handler.sh" << EOF
#!/bin/bash
case "\$SENDER" in
  "window_focus") $POPUP_OFF ;;
esac
EOF

chmod +x "$PLUGIN_DIR/apple_handler.sh"

sketchybar --add item           apple.logo left                             \
           --set apple.logo     icon=$APPLE                                 \
                               icon.font="$FONT:Black:16.0"                \
                               icon.color=$WHITE                           \
                               background.padding_right=15                 \
                               label.drawing=off                           \
                               click_script="$POPUP_CLICK_SCRIPT"          \
                               script="$PLUGIN_DIR/apple_handler.sh"       \
                                                                            \
           --add item           apple.prefs popup.apple.logo                \
           --set apple.prefs    icon=$PREFERENCES                           \
                               label="Preferences"                         \
                               click_script="open -a 'System Preferences';
                                             $POPUP_OFF"                   \
                                                                            \
           --add item           apple.activity popup.apple.logo             \
           --set apple.activity icon=$ACTIVITY                              \
                               label="Activity"                            \
                               click_script="open -a 'Activity Monitor';
                                             $POPUP_OFF"                   \
                                                                            \
           --add item           apple.lock popup.apple.logo                 \
           --set apple.lock     icon=$LOCK                                  \
                               label="Lock Screen"                         \
                               click_script="pmset displaysleepnow;
                                             $POPUP_OFF"                   \

# Add window_focus event subscription
sketchybar --add event window_focus \
           --subscribe apple.logo window_focus
