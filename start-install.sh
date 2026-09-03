#!/usr/bin/env bash
cd /home/vinay/dots-hyprland
clear
echo -e "\033[1;36m====================================================\033[0m"
echo -e "\033[1;36m       Installing illogical-impulse (dots-hyprland) \033[0m"
echo -e "\033[1;36m====================================================\033[0m"
echo ""
echo "Please enter your sudo password when prompted below."
echo "(Note: Sudo prompt was reset and unlocked)"
echo ""

if ./setup install -f --skip-allgreeting; then
    echo ""
    echo -e "\033[1;32m====================================================\033[0m"
    echo -e "\033[1;32m  Installation completed successfully!              \033[0m"
    echo -e "\033[1;32m  Press Enter to exit, then restart Hyprland.       \033[0m"
    echo -e "\033[1;32m====================================================\033[0m"
else
    echo ""
    echo -e "\033[1;31m====================================================\033[0m"
    echo -e "\033[1;31m  Installation ended. See details above.            \033[0m"
    echo -e "\033[1;31m  Press Enter to close this window.                 \033[0m"
    echo -e "\033[1;31m====================================================\033[0m"
fi
read -r
