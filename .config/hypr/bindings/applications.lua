local vars = require("hypr.vars")
local home = os.getenv("HOME")

hl.bind("SUPER + CTRL + W",  hl.dsp.exec_cmd(vars.wallpaperPicker), { description = "Wallpaper Picker" })
hl.bind("SUPER + ESCAPE",    hl.dsp.exec_cmd(vars.powermenu),       { description = "Power Menu" })
hl.bind("SUPER + T",         hl.dsp.exec_cmd(vars.terminal),        { description = "Terminal" })
hl.bind("SUPER + A",         hl.dsp.exec_cmd(vars.menu),            { description = "App Launcher" })
hl.bind("SUPER + F",         hl.dsp.exec_cmd(vars.fileManager),     { description = "File Manager" })
hl.bind("SUPER + B",         hl.dsp.exec_cmd(vars.browser),         { description = "Browser (Zen Browser)" })
hl.bind("SUPER + O",         hl.dsp.exec_cmd(vars.code),            { description = "Code" })
hl.bind("SUPER + P",         hl.dsp.exec_cmd(vars.colorPicker),     { description = "Color Picker" })
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd(vars.fileManagerT),    { description = "File Manager (Terminal)" })
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(vars.secondBrowser),   { description = "Browser (Brave Origin)" })
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd(vars.locker),          { description = "Lock Screen" })


