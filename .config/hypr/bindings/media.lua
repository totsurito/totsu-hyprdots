local home = os.getenv("HOME")

-- Volume controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("sh -c 'wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+ && " .. home .. "/.local/bin/volume-notify'"), { description = "Volume Up" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("sh -c 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- && " .. home .. "/.local/bin/volume-notify'"),        { description = "Volume Down" })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("sh -c 'wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && " .. home .. "/.local/bin/volume-notify muted'"), { description = "Toggle Mute" })

-- Media player controls
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("mpc toggle && dunstify -u low -t 1000 -r 1000 'MDP' 'Play/Pause'"),           { description = "Play/Pause" })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("mpc toggle && dunstify -u low -t 1000 -r 1000 'MDP' 'Play/Pause'"),           { description = "Play/Pause" })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("mpc next && dunstify -u low -t 1000 -r 1000 'MDP' 'Playing Next track'"),     { description = "Next Track" })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("mpc prev && dunstify -u low -t 1000 -r 1000 'MDP' 'Playing Previous track'"), { description = "Previous Track" })

-- Screen brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("sh -c 'brightnessctl s +5% && " .. home .. "/.local/bin/brightness-notify'"), { description = "Brightness Up" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("sh -c 'brightnessctl s 5%- && " .. home .. "/.local/bin/brightness-notify'"), { description = "Brightness Down" })
