-- Custom Window Rules for macOS-style Vibrancy, Clean Popups & Modals

-- 1. Background Blur for Terminals & File Managers
hl.window_rule({ match = { class = "^(kitty)$" }, no_blur = false })
hl.window_rule({ match = { class = "^(foot)$" }, no_blur = false })
hl.window_rule({ match = { class = "^(org.kde.dolphin)$" }, no_blur = false })

-- 2. Shell Settings & Dialogs
hl.window_rule({ match = { title = "^(illogical-impulse Settings)$" }, float = true })
hl.window_rule({ match = { title = "^(illogical-impulse Settings)$" }, center = true })
hl.window_rule({ match = { title = "^(illogical-impulse Settings)$" }, size = {"(monitor_w*0.65)", "(monitor_h*0.70)"} })
hl.window_rule({ match = { class = "^(systemsettings)$" }, float = true })
hl.window_rule({ match = { class = "^(systemsettings)$" }, center = true })
hl.window_rule({ match = { class = "^(systemsettings)$" }, size = {"(monitor_w*0.65)", "(monitor_h*0.70)"} })

-- Audio & Network Utilities
hl.window_rule({ match = { class = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol)$" }, center = true })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol-qt)$" }, center = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, center = true })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, center = true })

-- File Dialogs & Portals
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, center = true })

-- Picture-in-Picture
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, keep_aspect_ratio = true })
hl.window_rule({ match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" }, pin = true })
