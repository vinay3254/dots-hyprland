#!/usr/bin/env bash
echo "========================================================"
echo "    Setting up Authentic macOS Desktop for Hyprland     "
echo "========================================================"
echo ""
echo "Please enter your sudo password to install the required packages:"
sudo pacman -S --needed --noconfirm rofi swaync nwg-dock-hyprland inter-font

echo ""
echo "Starting Notification Center (SwayNC)..."
pkill -x swaync 2>/dev/null || true
swaync >/dev/null 2>&1 &
sleep 0.5
~/.config/swaync/update-calendar.sh

echo "Starting Dock (nwg-dock-hyprland)..."
pkill -x nwg-dock-hyprland 2>/dev/null || true
nwg-dock-hyprland -d -p bottom -i 52 -mb 10 -r -c "pkill rofi || rofi -show drun -config ~/.config/rofi/config.rasi" >/dev/null 2>&1 &

echo ""
echo "========================================================"
echo " macOS Desktop Stack is NOW RUNNING!"
echo " - Spotlight: Super + Space"
echo " - Notification Center: Super + N"
echo " - Dock: Hover at screen bottom for magnification curve"
echo "========================================================"
echo ""
read -p "Press Enter to close this setup window..."
