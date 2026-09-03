# Hyprland Dotfiles

Personal Wayland desktop configuration for Arch Linux. Built around Hyprland, Quickshell, Kitty, and Matugen.

---

## Desktop Overview

- **Compositor:** Hyprland 0.55+ (Wayland)
- **Top Bar & Shell:** Quickshell (`ii` family) with an enlarged macOS-style status bar (48px)
- **Application Launcher:** Fuzzel (Spotlight-style centered fuzzy search)
- **Terminals:** Kitty & Foot (Pure `#000000` pitch-black background)
- **Lockscreen & Session:** Hyprlock & frosted glass Wlogout capsules
- **Motion & Physics:** Apple fluid spring curves (`appleSpring`), continuous squircle curvature, and 1:1 trackpad gestures
- **Bloat Removal:** Gemini/AI subsystems and background telemetry disabled

---

## Trackpad & Touchpad Gestures

| Gesture | Action |
|---|---|
| **3-Finger Swipe (Horizontal)** | Inertial 1:1 Workspace Switching |
| **3-Finger Swipe (Vertical)** | Move focused window |
| **3-Finger Pinch In/Out** | Toggle Fullscreen / Float |
| **4-Finger Swipe Up** | Mission Control / Workspace Overview |
| **4-Finger Swipe Down** | Action Center / Notifications |
| **4-Finger Pinch** | Spotlight App Search (Fuzzel) |

---

## Keyboard Shortcuts

### Window Management
| Keybinding | Action |
|---|---|
| `Super + Enter` | Open Terminal (Kitty) |
| `Super + Q` | Close focused window |
| `Super + F` | Toggle fullscreen |
| `Super + Shift + Space` | Toggle floating mode |
| `Super + P` | Pin window across workspaces |
| `Super + H / J / K / L` | Focus Left / Down / Up / Right (Vim) |
| `Super + Shift + H / J / K / L` | Swap window position (Vim) |
| `Super + Alt + H / J / K / L` | Resize window (Vim) |
| `Super + [1-9]` | Switch to workspace 1-9 |
| `Super + Shift + [1-9]` | Move active window to workspace 1-9 |

### System & Shell
| Keybinding | Action |
|---|---|
| `Super + Space` / `Super + /` | Spotlight App Search (Fuzzel) |
| `Super + B` | Launch Web Browser |
| `Super + C` | Launch Code Editor |
| `Super + E` | Launch File Manager |
| `Super + Tab` | Workspace Overview |
| `Super + N` | Toggle Notifications / Action Center |
| `Super + J` | Toggle Top Status Bar |
| `Super + V` | Open Clipboard History |
| `Super + Period` | Emoji Picker |
| `Ctrl + Shift + Esc` | Task Manager / Btop |
| `Ctrl + Alt + Del` | Session / Power Menu |
| `Print` | Capture screenshot to clipboard & disk |

---

## Repository Structure

```text
├── dots/
│   └── .config/
│       ├── hypr/           # Hyprland config (general, keybinds, rules, custom overrides)
│       ├── quickshell/     # Quickshell UI widgets, bar, control center, and modules
│       ├── matugen/        # Dynamic color schemes & templates
│       ├── kitty/          # Kitty terminal emulator configuration
│       ├── foot/           # Foot lightweight terminal config
│       ├── fuzzel/         # App launcher styling
│       ├── wlogout/        # Power menu layout & frosted styling
│       └── starship.toml   # Shell prompt theme
├── sdata/                  # System scripts & dependency manifests
├── setup                   # Interactive installation script
└── diagnose                # System diagnostics helper
```

---

## Installation

```bash
# Clone with all submodules
git clone --recurse-submodules https://github.com/vinay3254/dots-hyprland.git ~/.config/dots-hyprland
cd ~/.config/dots-hyprland

# Run setup
./setup install
```
