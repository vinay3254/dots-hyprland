#!/usr/bin/env bash
MODE_FILE="${HOME}/.cache/macos_theme_mode"
CURRENT=$(cat "$MODE_FILE" 2>/dev/null || echo "dark")

if [ "$CURRENT" = "dark" ]; then
    NEW_MODE="light"
    ln -sf ~/.config/waybar/style-light.css ~/.config/waybar/style.css
    ln -sf ~/.config/swaync/style-light.css ~/.config/swaync/style.css
    pkill nwg-dock-hyprland 2>/dev/null
    nwg-dock-hyprland -d -i 48 -hd 0 -mb 10 -r -s style-light.css >/dev/null 2>&1 &
    sed -i 's/spotlight-dark.rasi/spotlight-light.rasi/g' ~/.config/hypr/macos.conf 2>/dev/null
else
    NEW_MODE="dark"
    ln -sf ~/.config/waybar/style-dark.css ~/.config/waybar/style.css
    ln -sf ~/.config/swaync/style-dark.css ~/.config/swaync/style.css
    pkill nwg-dock-hyprland 2>/dev/null
    nwg-dock-hyprland -d -i 48 -hd 0 -mb 10 -r -s style-dark.css >/dev/null 2>&1 &
    sed -i 's/spotlight-light.rasi/spotlight-dark.rasi/g' ~/.config/hypr/macos.conf 2>/dev/null
fi

echo "$NEW_MODE" > "$MODE_FILE"
pkill -USR2 waybar 2>/dev/null
swaync-client -R 2>/dev/null
swaync-client -rs 2>/dev/null
hyprctl reload 2>/dev/null
notify-send -a "macOS System" "Switched to macOS $(echo $NEW_MODE | tr '[:lower:]' '[:upper:]') Mode" 2>/dev/null
