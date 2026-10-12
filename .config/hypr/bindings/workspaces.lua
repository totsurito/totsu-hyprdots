for ws = 1, 10 do
  local key = tostring(ws % 10) -- 10 maps to "0" to match the .conf bindings
  hl.bind("SUPER + " .. key,         hl.dsp.focus({ workspace = tostring(ws) }),       { description = "Workspace " .. ws })
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(ws) }), { description = "Move to Workspace " .. ws })
end

-- Scratchpad
for sp = 1, 4 do
  local key = tostring(sp)
  hl.bind("SUPER + F" .. key,         hl.dsp.workspace.toggle_special("grand" .. sp),            { description = "Toggle Scratchpad" .. sp })
  hl.bind("SUPER + SHIFT + F" .. key, hl.dsp.window.move({ workspace = "special:grand" .. sp }), { description = "Move to Scratchpad" .. sp })
end

-- Scroll through workspaces
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Next Workspace" })
hl.bind("SUPER + mouse_up",   hl.dsp.focus({ workspace = "e-1" }), { description = "Previous Workspace" })
