#!/bin/bash

if pgrep -x hypridle >/dev/null; then
  pkill -x hypridle
  notify-send "Idle" "Stopped locking when idle"
else
  uwsm app -- hypridle >/dev/null 2>&1 &
  notify-send "Idle" "Now locking when idle"
fi
