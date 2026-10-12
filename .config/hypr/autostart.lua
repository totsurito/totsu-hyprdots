local vars = require("hypr.vars")

hl.on("hyprland.start", function()
  hl.exec_cmd("uwsm app -- dunst")
  hl.exec_cmd("uwsm app -- waybar")
  hl.exec_cmd("uwsm app -- wl-paste --type text --watch cliphist store")
  hl.exec_cmd("uwsm app -- wl-paste --type image --watch cliphist store")
  hl.exec_cmd("uwsm app -- hypridle")
  hl.exec_cmd("uwsm app -- awww-daemon")
  hl.exec_cmd("uwsm app -- skwd-daemon")
  hl.exec_cmd("uwsm app -- " .. vars.terminal)
  hl.exec_cmd("~/.mpd/autostart.sh")

  -- Slow-app-launch fix: import env into systemd + dbus
  hl.exec_cmd([[sh -c 'systemctl --user import-environment $(env | cut -d= -f1)']])
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
end)