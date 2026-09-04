#!/usr/bin/env bash
WALL_DIR="${HOME}/Pictures/Wallpapers"
mkdir -p "$WALL_DIR"

if ! pgrep -x "swww-daemon" > /dev/null; then
    swww-daemon &
    sleep 0.5
fi

CURRENT_WALL=$(swww query 2>/dev/null | awk -F 'image: ' '{print $2}' | head -n 1)
WALLPAPER=$(find "$WALL_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) 2>/dev/null | grep -v "$CURRENT_WALL" | shuf -n 1)

if [ -n "$WALLPAPER" ]; then
    swww img "$WALLPAPER" \
        --transition-type grow \
        --transition-pos 0.5,0.5 \
        --transition-duration 1.2 \
        --transition-fps 60 \
        --transition-bezier 0.16,1,0.3,1
fi
