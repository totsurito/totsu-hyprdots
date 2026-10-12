#!/bin/bash
# Usage: toggle_cpu_mode.sh <on|off>
#   on  - performance mode
#   off - powersave mode

case "$1" in
  on)
    sudo cpupower frequency-set -g performance
    echo "CPU: performance"
    ;;
  off)
    sudo cpupower frequency-set -g powersave
    echo "CPU: powersave"
    ;;
  *)
    echo "Usage: toggle_cpu_mode.sh <on|off>"
    exit 1
    ;;
esac
