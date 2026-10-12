#!/bin/bash

# Toggle between extended and mirror mode
# Auto-detects primary (built-in) and external monitors

PRIMARY=$(hyprctl monitors -j | jq -r '.[] | select(.name | test("^eDP")) | .name' | head -1)
EXTERNAL=$(hyprctl monitors -j | jq -r '.[] | select(.name | test("^eDP") | not) | .name' | head -1)

if [[ -z $EXTERNAL ]]; then
  notify-send "Monitor Mode" "No external monitor detected"
  exit 1
fi

if hyprctl monitors | grep -A 5 "$EXTERNAL" | grep -q "mirror of $PRIMARY"; then
  hyprctl keyword monitor "$EXTERNAL,preferred,auto,1"
  notify-send "Monitor Mode" "Extended display enabled"
else
  hyprctl keyword monitor "$EXTERNAL,preferred,auto,1,mirror,$PRIMARY"
  notify-send "Monitor Mode" "Mirror mode enabled"
fi
