#!/bin/bash

# Gracefully log out of the Hyprland/UWSM session.
# Closes all windows first so apps like Chrome shut down cleanly,
# then stops the UWSM session.

nohup bash -c "sleep 2 && uwsm stop" >/dev/null 2>&1 &

hyprctl clients -j | jq -r ".[].address" | while read -r addr; do
  hyprctl dispatch closewindow "address:$addr" >/dev/null 2>&1
done

sleep 1
