# Hyprland Dotfiles

Personal Wayland desktop configuration for Arch Linux. Built around Hyprland, Quickshell, Kitty, and Matugen.

---

## Desktop Overview

- **Compositor:** Hyprland 0.55+ (Wayland)
- **Top Bar & Shell:** Quickshell (`ii` family) with an enlarged macOS-style status bar (48px)
- **Application Launcher:** Fuzzel (FZF fuzzy search)
- **Terminals:** Kitty & Foot (Pure `#000000` pitch-black background)
- **Lockscreen:** Hyprlock with blurred wallpaper rendering and pam authentication
- **Color Engine:** Matugen (Material Design palettes)
- **Bloat Removal:** Gemini/AI subsystems and background telemetry disabled

---

## Keybindings

### Window Management
| Keybinding | Action |
|---|---|
| `Super + Enter` | Open Terminal |
| `Super + Q` | Close focused window |
| `Super + F` | Toggle fullscreen |
| `Super + Alt + Space` | Toggle floating mode |
| `Super + [1-9]` | Switch to workspace 1-9 |
| `Super + Shift + [1-9]` | Move active window to workspace 1-9 |

### System & Shell
| Keybinding | Action |
|---|---|
| `Super + /` / `Super + Space` | Open App Launcher (Fuzzel) |
| `Super + Tab` | Workspace Overview |
| `Super + N` | Toggle Notifications / Action Center |
| `Super + J` | Toggle Top Status Bar |
| `Super + V` | Open Clipboard History |
| `Super + Period` | Emoji Picker |
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
│       ├── wlogout/        # Power menu layout
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
