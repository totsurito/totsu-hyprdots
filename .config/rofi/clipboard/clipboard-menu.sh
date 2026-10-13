#!/bin/bash
dir="$HOME/.config/rofi"
theme='clipboard/style'
NOTIFY_ID=9996
SELECTED=$(cliphist list | rofi -dmenu -theme ${dir}/${theme}.rasi)
            
[[ -z "$SELECTED" ]] && exit 0

echo "$SELECTED" | cliphist decode | wl-copy

dunstify -u low -t 1500 -r $NOTIFY_ID "Clipboard" "Element copied to clipboard"