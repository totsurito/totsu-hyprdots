-- =====================================================================
-- Default config
-- =====================================================================
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })
hl.window_rule({ match = { class = ".*" }, tag = "+default-opacity" })
-- hl.window_rule({ match = { class = ".*" }, no_blur = true })
hl.window_rule({
	match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
	no_focus = true,
})

-- =====================================================================
-- webcam (was windows/webcam.conf)
-- =====================================================================
hl.window_rule({ match = { title = "WebcamOverlay" }, float = true })
hl.window_rule({ match = { title = "WebcamOverlay" }, pin = true })
hl.window_rule({ match = { title = "WebcamOverlay" }, no_initial_focus = true })
hl.window_rule({ match = { title = "WebcamOverlay" }, no_dim = true })
hl.window_rule({ match = { title = "WebcamOverlay" }, move = "(monitor_w-window_w-40) (monitor_h-window_h-40)" })

-- =====================================================================
-- Steam
-- =====================================================================
hl.window_rule({ match = { class = "steam" }, float = true })
hl.window_rule({ match = { class = "steam" }, center = true })
hl.window_rule({ match = { class = "steam.*" }, tag = "-default-opacity" })
hl.window_rule({ match = { class = "steam.*" }, opacity = "1 0.9" })
hl.window_rule({ match = { class = "steam", title = "Steam" }, size = { 1100, 700 } })
hl.window_rule({ match = { class = "steam", title = "Friends List" }, size = { 460, 800 } })
hl.window_rule({ match = { class = "steam" }, idle_inhibit = "fullscreen" })

-- =====================================================================
-- Browser (Zen-Browser and Brave-Origin)
-- =====================================================================
hl.window_rule({ match = { class = "zen" }, tag = "-default-opacity" })
hl.window_rule({ match = { class = "zen" }, tile = true })
hl.window_rule({ match = { class = "zen" }, opacity = "1" })

hl.window_rule({ match = { class = "brave-origin" }, tag = "-default-opacity" })
hl.window_rule({ match = { class = "brave-origin" }, tile = true })
hl.window_rule({ match = { class = "brave-origin" }, opacity = "1" })

-- =====================================================================
-- File manager (Main Window + Open/Save dialogs)
-- =====================================================================
hl.window_rule({ match = { class = "org.gnome.Nautilus" }, tag = "+floating-window" })
hl.window_rule({
	match = {
		class = "(xdg-desktop-portal-gtk|sublime_text|DesktopEditors)",
		title = "^(Open.*Files?|Open [F|f]older.*|Save.*Files?|Save.*As|Save|All Files|.*wants to [open|save].*|[C|c]hoose.*)",
	},
	tag = "+floating-window",
})

-- =====================================================================
-- Calculator
-- =====================================================================
hl.window_rule({ match = { class = "org.gnome.Calculator" }, tag = "+floating-window" })

-- =====================================================================
-- Discord (Vesktop)
-- =====================================================================
hl.window_rule({ match = { class = "vesktop" }, tag = "-default-opacity" })

-- =====================================================================
-- Media windows
-- =====================================================================
hl.window_rule({ match = { class = "^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$" }, 
	tag = "-default-opacity"
})
hl.window_rule({ match = { class = "^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$" },
	opacity = "1"
})

-- =====================================================================
-- Music (Gapless/g4music)
-- =====================================================================
hl.window_rule({ match = { class = "com.github.neithern.g4music" }, tag = "+floating-window" })
hl.window_rule({ match = { class = "com.github.neithern.g4music" }, tag = "opacity-1" })
hl.window_rule({ match = { class = "com.github.neithern.g4music" }, workspace = "special:grand1" })

-- =====================================================================
-- VSCode (Code - OSS)
-- =====================================================================
hl.window_rule({ match = { class = "code-oss" }, tag = "opacity-1" })

-- =====================================================================
-- Rstudio
-- =====================================================================
hl.window_rule({ match = { class = "rstudio" }, tag = "opacity-1" })

-- =====================================================================
-- Matlab
-- =====================================================================
hl.window_rule({ match = { class = "MATLAB R2024b Update 9", title = "MATLAB" }, tag = "opacity-1" })
hl.window_rule({ match = { class = "MATLAB R2024b Update 9", title = "Figures" }, tag = "-default-opacity" })
hl.window_rule({ match = { class = "MATLAB R2024b Update 9", title = "Figures" }, opacity = "1 1" })

-- =====================================================================
-- Obsidian
-- =====================================================================
hl.window_rule({ match = { class = "md.obsidian.Obsidian" }, tag = "opacity-1" })

-- =====================================================================
-- GeForce
-- =====================================================================
hl.window_rule({ match = { class = "GeForceNOW" }, name = "geforce" })
hl.window_rule({ match = { class = "GeForceNOW" }, idle_inhibit = "fullscreen" })

-- =====================================================================
-- qemu
-- =====================================================================
hl.window_rule({ match = { class = "qemu" }, tag = "-default-opacity" })
hl.window_rule({ match = { class = "qemu" }, opacity = "1" })

-- =====================================================================
-- Emulator
-- =====================================================================
hl.window_rule({ match = { class = "^(Emulator)$", title = "^(Emulator)$" }, float = true })
hl.window_rule({ match = { class = "^(Emulator)$", title = "^(Emulator)$" }, center = true })
hl.window_rule({ match = { class = "^(Android Emulator)$", title = "^(Android Emulator.*)$" }, float = true })
hl.window_rule({ match = { class = "^(Android Emulator)$", title = "^(Android Emulator.*)$" }, center = true })

-- =====================================================================
-- DaVinci Resolve
-- =====================================================================
hl.window_rule({ match = { class = ".*[Rr]esolve.*", float = true }, stay_focused = true })

-- =====================================================================
-- LocalSend 
-- =====================================================================
hl.window_rule({ match = { class = "localsend" }, float = true })
hl.window_rule({ match = { class = "localsend" }, center = true })
hl.window_rule({ match = { class = "localsend" }, size = { 1100, 700 } })

-- =====================================================================
-- Hyprshot
-- =====================================================================
hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })

-- =====================================================================
-- Tag Config
-- =====================================================================
-- Default Opacity
hl.window_rule({ match = { tag = "default-opacity" }, opacity = "0.95 0.6" })
hl.window_rule({ match = { tag = "opacity-1" }, tag = "-default-opacity" })
hl.window_rule({ match = { tag = "opacity-1" }, opacity = "0.75 0.6" })

-- Floating Window
hl.window_rule({ match = { tag = "floating-window" }, float = true })
hl.window_rule({ match = { tag = "floating-window" }, center = true })
hl.window_rule({ match = { tag = "floating-window" }, size = { 875, 600 } })