#!/usr/bin/env bash
DAY_NUM=$(date +%-d)
DAY_NAME=$(date +%A)
CONFIG_FILE="${HOME}/.config/swaync/config.json"

if [ -f "$CONFIG_FILE" ]; then
    sed -i "s|\"text\": \"<span.*\"|\"text\": \"<span font_desc='Inter 11' weight='bold' color='#1d1d1f'>Calendar</span>\\\\n<span font_desc='Inter 28' weight='300' color='#1d1d1f'>$DAY_NUM</span>\\\\n<span font_desc='Inter 11' color='#6e6e73'>$DAY_NAME</span>\"|g" "$CONFIG_FILE"
    swaync-client -R 2>/dev/null || true
fi
