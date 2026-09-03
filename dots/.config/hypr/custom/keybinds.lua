-- Custom Keybindings for Vinay's Hyprland Setup
require("hyprland.lib")
require("hyprland.variables")

-- Quick App Launchers
hl.bind("SUPER + Space", hl.dsp.exec_cmd("pkill fuzzel || fuzzel"), { description = "App Launcher (Fuzzel)" })
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser), { description = "Launch Browser" })
hl.bind("SUPER + C", hl.dsp.exec_cmd(codeEditor), { description = "Launch Code Editor" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager), { description = "Launch File Manager" })
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd(taskManager), { description = "Launch Task Manager / Btop" })

-- Window Actions
hl.bind("SUPER + Q", hl.dsp.window.kill(), { description = "Close Focused Window" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen(0), { description = "Toggle Fullscreen" })
hl.bind("SUPER + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle Floating" })
hl.bind("SUPER + P", hl.dsp.window.pin(), { description = "Pin Window (Sticky across workspaces)" })

-- Window Navigation (Vim + Arrow keys)
hl.bind("SUPER + Left", hl.dsp.window.move_focus("l"), { description = "Focus Left" })
hl.bind("SUPER + Right", hl.dsp.window.move_focus("r"), { description = "Focus Right" })
hl.bind("SUPER + Up", hl.dsp.window.move_focus("u"), { description = "Focus Up" })
hl.bind("SUPER + Down", hl.dsp.window.move_focus("d"), { description = "Focus Down" })
hl.bind("SUPER + H", hl.dsp.window.move_focus("l"), { description = "Focus Left (vim)" })
hl.bind("SUPER + L", hl.dsp.window.move_focus("r"), { description = "Focus Right (vim)" })
hl.bind("SUPER + K", hl.dsp.window.move_focus("u"), { description = "Focus Up (vim)" })
hl.bind("SUPER + J", hl.dsp.window.move_focus("d"), { description = "Focus Down (vim)" })

-- Window Moving / Swapping (Vim + Arrow keys)
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.swap("l"), { description = "Swap Left" })
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.swap("r"), { description = "Swap Right" })
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.swap("u"), { description = "Swap Up" })
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.swap("d"), { description = "Swap Down" })
hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap("l"), { description = "Swap Left (vim)" })
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap("r"), { description = "Swap Right (vim)" })
hl.bind("SUPER + SHIFT + K", hl.dsp.window.swap("u"), { description = "Swap Up (vim)" })
hl.bind("SUPER + SHIFT + J", hl.dsp.window.swap("d"), { description = "Swap Down (vim)" })

-- Window Resizing
hl.bind("SUPER + ALT + Left", hl.dsp.window.resize({ x = -30, y = 0 }), { repeating = true, description = "Resize Width -" })
hl.bind("SUPER + ALT + Right", hl.dsp.window.resize({ x = 30, y = 0 }), { repeating = true, description = "Resize Width +" })
hl.bind("SUPER + ALT + Up", hl.dsp.window.resize({ x = 0, y = -30 }), { repeating = true, description = "Resize Height -" })
hl.bind("SUPER + ALT + Down", hl.dsp.window.resize({ x = 0, y = 30 }), { repeating = true, description = "Resize Height +" })
hl.bind("SUPER + ALT + H", hl.dsp.window.resize({ x = -30, y = 0 }), { repeating = true, description = "Resize Width - (vim)" })
hl.bind("SUPER + ALT + L", hl.dsp.window.resize({ x = 30, y = 0 }), { repeating = true, description = "Resize Width + (vim)" })
hl.bind("SUPER + ALT + K", hl.dsp.window.resize({ x = 0, y = -30 }), { repeating = true, description = "Resize Height - (vim)" })
hl.bind("SUPER + ALT + J", hl.dsp.window.resize({ x = 0, y = 30 }), { repeating = true, description = "Resize Height + (vim)" })

-- Media & Audio Controls
hl.bind("SUPER + Backslash", hl.dsp.exec_cmd("playerctl play-pause"), { description = "Media: Play/Pause" })
hl.bind("SUPER + bracketleft", hl.dsp.exec_cmd("playerctl previous"), { description = "Media: Previous Track" })
hl.bind("SUPER + bracketright", hl.dsp.exec_cmd("playerctl next"), { description = "Media: Next Track" })
hl.bind("SUPER + Up", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, description = "Volume +5%" })
hl.bind("SUPER + Down", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true, description = "Volume -5%" })
hl.bind("SUPER + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { description = "Toggle Audio Mute" })

-- System & Utilities
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"), { description = "Color Picker to Clipboard" })
hl.bind("CTRL + SUPER + R", hl.dsp.exec_cmd("hyprctl reload && killall quickshell qs; qs -c $qsConfig &"), { description = "Reload Hyprland & Quickshell" })
hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), { description = "Edit Custom Keybinds" })
