-- Programs (locals; reused inside bindings/ via require'ing this file if needed)
local M = {}
M.wallpaperPicker = "skwd wall toggle"
M.powermenu =       os.getenv("HOME") .. "/.config/rofi/powermenu/powermenu.sh"
M.terminal =        "kitty"
M.menu =            os.getenv("HOME") .. "/.config/rofi/launcher/launcher.sh"
M.fileManager =     "nautilus"
M.browser =         "zen-browser"
M.code =            "code"
M.colorPicker =     "sh -c 'hyprpicker | wl-copy'"
M.fileManagerT =    "kitty spf"
M.secondBrowser =   "brave-origin"
M.locker =          "hyprlock"

-- Env vars (XCOMPOSE file used by GTK input methods)
hl.env("XCOMPOSEFILE", os.getenv("HOME") .. "/.XCompose")

-- xwayland forced-zero-scaling and ecosystem flags
hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
  ecosystem = {
    no_update_news = true,
  },
})

return M
