#!/bin/bash

ON_TEMP=4000
OFF_TEMP=6000

# Ensure hyprsunset is running
if ! pgrep -x hyprsunset >/dev/null; then
  uwsm app -- hyprsunset &
  sleep 1
fi

CURRENT_TEMP=$(hyprctl hyprsunset temperature 2>/dev/null | grep -oE '[0-9]+')

if [[ $CURRENT_TEMP == "$OFF_TEMP" ]]; then
  hyprctl hyprsunset temperature $ON_TEMP
  notify-send "Nightlight" "Warm screen temperature (${ON_TEMP}K)"
else
  hyprctl hyprsunset temperature $OFF_TEMP
  notify-send "Nightlight" "Daylight screen temperature (${OFF_TEMP}K)"
fi
