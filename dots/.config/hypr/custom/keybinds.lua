-- Custom Keybindings for Vinay's Hyprland Setup (Requiem Noir/Rust)

-- 1. Quick App Launchers
hl.bind("SUPER + Space", hl.dsp.exec_cmd("pkill rofi || rofi -show drun || pkill fuzzel || fuzzel"), { description = "App Launcher (Rofi / Fuzzel)" })
hl.bind("SUPER + R", hl.dsp.exec_cmd("pkill rofi || rofi -show run"), { description = "Run Command (Rofi)" })
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser), { description = "Launch Browser" })
hl.bind("SUPER + C", hl.dsp.exec_cmd(codeEditor), { description = "Launch Code Editor" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager), { description = "Launch File Manager" })
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd(taskManager), { description = "Launch Task Manager / Btop" })

-- 2. Window Actions
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close Focused Window" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), { description = "Toggle Fullscreen" })
hl.bind("SUPER + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle Floating" })
hl.bind("SUPER + P", hl.dsp.window.pin(), { description = "Pin Window" })

-- 3. Window Navigation (Vim keys)
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }), { description = "Focus Left (vim)" })
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }), { description = "Focus Right (vim)" })
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }), { description = "Focus Up (vim)" })
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }), { description = "Focus Down (vim)" })

-- 4. Window Moving / Swapping (Vim keys)
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }), { description = "Swap Left (vim)" })
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }), { description = "Swap Right (vim)" })
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }), { description = "Swap Up (vim)" })
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }), { description = "Swap Down (vim)" })

-- 5. Window Resizing (Vim keys + Arrows)
hl.bind("SUPER + ALT + Left", hl.dsp.window.resize({ x = -30, y = 0 }), { repeating = true, description = "Resize Width -" })
hl.bind("SUPER + ALT + Right", hl.dsp.window.resize({ x = 30, y = 0 }), { repeating = true, description = "Resize Width +" })
hl.bind("SUPER + ALT + Up", hl.dsp.window.resize({ x = 0, y = -30 }), { repeating = true, description = "Resize Height -" })
hl.bind("SUPER + ALT + Down", hl.dsp.window.resize({ x = 0, y = 30 }), { repeating = true, description = "Resize Height +" })
hl.bind("SUPER + ALT + H", hl.dsp.window.resize({ x = -30, y = 0 }), { repeating = true, description = "Resize Width - (vim)" })
hl.bind("SUPER + ALT + L", hl.dsp.window.resize({ x = 30, y = 0 }), { repeating = true, description = "Resize Width + (vim)" })
hl.bind("SUPER + ALT + K", hl.dsp.window.resize({ x = 0, y = -30 }), { repeating = true, description = "Resize Height - (vim)" })
hl.bind("SUPER + ALT + J", hl.dsp.window.resize({ x = 0, y = 30 }), { repeating = true, description = "Resize Height + (vim)" })

-- 6. Media & Audio Controls
hl.bind("SUPER + Backslash", hl.dsp.exec_cmd("playerctl play-pause"), { description = "Media: Play/Pause" })
hl.bind("SUPER + Bracketleft", hl.dsp.exec_cmd("playerctl previous"), { description = "Media: Previous Track" })
hl.bind("SUPER + Bracketright", hl.dsp.exec_cmd("playerctl next"), { description = "Media: Next Track" })
hl.bind("SUPER + Up", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true, description = "Volume +5%" })
hl.bind("SUPER + Down", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true, description = "Volume -5%" })
hl.bind("SUPER + M", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { description = "Toggle Audio Mute" })

-- 7. Notifications & Wallpaper
hl.bind("SUPER + N", hl.dsp.exec_cmd("swaync-client -t -sw || qs -c $qsConfig ipc call sidebarRight toggle"), { description = "Toggle Notifications Panel" })
hl.bind("SUPER + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/wallcycle.sh"), { description = "Cycle Wallpaper (SWWW)" })

-- 8. Screenshots (Grimblast)
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("mkdir -p ~/Pictures/Screenshots && (grimblast --notify copysave area ~/Pictures/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png || hyprshot -m region --clipboard-only)"), { description = "Screenshot: Area select >> Clipboard + File" })
hl.bind("SUPER + ALT + S", hl.dsp.exec_cmd("mkdir -p ~/Pictures/Screenshots && (grimblast --notify copysave active ~/Pictures/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png || hyprshot -m window --clipboard-only)"), { description = "Screenshot: Active Window >> Clipboard + File" })
hl.bind("Print", hl.dsp.exec_cmd("mkdir -p ~/Pictures/Screenshots && (grimblast --notify copysave screen ~/Pictures/Screenshots/Screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png || hyprshot -m output --clipboard-only)"), { description = "Screenshot: Fullscreen >> Clipboard + File" })

-- 9. Session & Utilities
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session || hyprlock"), { description = "Lock Screen" })
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("pkill wlogout || wlogout -p layer-shell"), { description = "Power / Session Menu (Wlogout)" })
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a"), { description = "Color Picker to Clipboard" })
hl.bind("CTRL + SUPER + R", hl.dsp.exec_cmd("hyprctl reload && killall quickshell qs; qs -c $qsConfig &"), { description = "Reload Hyprland & Shell" })
