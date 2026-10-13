#!/bin/bash
dir="$HOME/.config/rofi"
theme='keybindings/style'

hyprctl -j binds |
  jq -r '.[] | {modmask, key, description, dispatcher, arg} | "\(.modmask),\(.key),\(.description),\(.dispatcher),\(.arg)"' |
  sed -r \
    -e 's/null//g' \
    -e 's/^0,/,/' \
    -e 's/^1,/SHIFT + /' \
    -e 's/^4,/CTRL + /' \
    -e 's/^8,/ALT + /' \
    -e 's/^64,/SUPER + /' \
    -e 's/^65,/SUPER SHIFT + /' \
    -e 's/^68,/SUPER CTRL + /' \
    -e 's/^72,/SUPER ALT + /' \
    -e 's/^73,/SUPER SHIFT ALT + /' \
    -e 's/^76,/SUPER CTRL ALT + /' \
    -e 's/^69,/SUPER CTRL SHIFT + /' \
    -e 's/^5,/CTRL SHIFT + /' \
    -e 's/^9,/SHIFT ALT + /' \
    -e 's/^12,/CTRL ALT + /' |
  awk -F, '{
    key = $1
    gsub(/^[ \t]*\+?[ \t]*/, "", key)
    gsub(/[ \t]+$/, "", key)

    desc = $2
    gsub(/^[ \t]+|[ \t]+$/, "", desc)

    if (desc == "") {
      for (i = 3; i <= NF; i++) desc = desc $i (i < NF ? "," : "")
      sub(/,$/, "", desc)
      gsub(/(^|,)[[:space:]]*exec[[:space:]]*,?/, "", desc)
      gsub(/^[ \t]+|[ \t]+$/, "", desc)
    }

    if (desc != "") printf "%-30s  %s\n", key, desc
  }' |
  sort -u |
  rofi -dmenu -p "󰌌" -i -theme ${dir}/${theme}.rasi