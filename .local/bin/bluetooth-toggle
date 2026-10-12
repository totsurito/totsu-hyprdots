#!/bin/bash

is_powered() {
  dbus-send --system --print-reply --dest=org.bluez /org/bluez/hci0 \
    org.freedesktop.DBus.Properties.Get string:org.bluez.Adapter1 string:Powered 2>&1 | \
    grep -q "true"
}

case "$1" in
toggle)
  if is_powered; then
    bluetoothctl power off
  else
    bluetoothctl power on
  fi
  ;;
status)
  if is_powered; then
    echo "true"
  else
    echo "false"
  fi
  ;;
*)
  echo "Usage: $0 {toggle|status}"
  exit 1
  ;;
esac
