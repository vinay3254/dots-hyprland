-- Custom Window Rules for macOS-style Vibrancy & Transparency

-- Enable frosted background blur for terminals and file managers
hl.window_rule({ match = { class = "^(kitty)$" }, no_blur = false })
hl.window_rule({ match = { class = "^(foot)$" }, no_blur = false })
hl.window_rule({ match = { class = "^(org.kde.dolphin)$" }, no_blur = false })

-- Dialogs & Utilities Auto-centering
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, center = true })
