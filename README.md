# Hyprland Dotfiles — "Requiem" Noir/Rust Edition

Personal Wayland desktop configuration for Arch Linux. Built around a deep charcoal `#0d0d0d` base and rust-orange `#b5502d` accents with Apple fluid spring physics and optical typography.

---

## Theming & Palette

| Token | Hex | Role |
|---|---|---|
| **Background** | `#0d0d0d` | Deep charcoal base |
| **Surface** | `#1a1a1a` | Cards, popups, control center |
| **Surface Selected** | `#26201d` | Active / Hover items |
| **Accent (Rust)** | `#b5502d` | Active borders, indicators |
| **Accent Glow** | `#d96b3d` | Focus highlights & glows |
| **Text Primary** | `#e8e0d5` | Warm cream text |
| **Text Muted** | `#8c827a` | Secondary text / hints |

---

## Stack Components

| Component | Software | Description |
|---|---|---|
| **Compositor** | [Hyprland](https://github.com/hyprwm/hyprland) 0.55+ | Dynamic tiling Wayland compositor with Apple spring curves |
| **Top Bar & Shell** | [Quickshell](https://quickshell.outfoxxed.me/) | 58px transparent floating island top bar + 1s auto-hide dock |
| **App Launcher** | [Rofi-Wayland](https://github.com/lbonn/rofi-wayland) / [Fuzzel](https://codeberg.org/dnkl/fuzzel) | Centered Noir/Rust application search |
| **Notification Center** | [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) | Frosted glass notification center with volume/brightness sliders |
| **Wallpaper Engine** | [SWWW](https://github.com/LGFae/swww) | GPU-accelerated crossfade wallpaper daemon (`Super + W`) |
| **Lock Screen** | [Hyprlock](https://github.com/hyprwm/hyprlock) | Blurred screenshot backdrop with optical clock & password pill |
| **Idle Management** | [Hypridle](https://github.com/hyprwm/hypridle) | 2.5m dim, 5m lock, 5.5m screen-off, 15m suspend |
| **Screenshots** | [Grimblast](https://github.com/hyprwm/contrib/tree/main/grimblast) | Area, window, and fullscreen captures with clipboard copy |
| **Power Menu** | [Wlogout](https://github.com/ArtsyMacaw/wlogout) | Translucent circular capsule session menu |
| **GTK & Cursor** | `adw-gtk3-dark` + `Bibata-Modern-Classic` | Seamless dark theme with 24px cursor |

---

## Trackpad & Touchpad Gestures

| Gesture | Action |
|---|---|
| **3-Finger Swipe (Horizontal)** | 1:1 Inertial Spaces / Workspace switching |
| **3-Finger Swipe (Vertical)** | Move focused window |
| **3-Finger Pinch In/Out** | Toggle Window Fullscreen |
| **4-Finger Swipe Up** | Mission Control / Workspace Overview |
| **4-Finger Swipe Down** | Action Center / Notifications Panel |
| **4-Finger Pinch** | Spotlight App Search (Rofi / Fuzzel) |

---

## Keybindings Reference

### Applications & Utilities
| Keybinding | Action |
|---|---|
| `Super + Space` | Launch Application Search (Rofi) |
| `Super + R` | Run Command (Rofi) |
| `Super + Enter` | Open Terminal (Kitty) |
| `Super + B` | Launch Web Browser |
| `Super + C` | Launch Code Editor |
| `Super + E` | Launch File Manager |
| `Super + W` | Cycle Wallpaper with Crossfade (SWWW) |
| `Super + N` | Toggle Notification Center (SwayNC) |
| `Ctrl + Shift + Esc` | Task Manager / Btop |
| `Ctrl + Alt + Del` | Power / Session Menu (Wlogout) |
| `Super + Shift + C` | Color Picker to Clipboard (`hyprpicker`) |

### Screenshots (Grimblast)
| Keybinding | Action |
|---|---|
| `Super + Shift + S` | Select Area >> Save to `~/Pictures/Screenshots` + Copy |
| `Super + Alt + S` | Active Window >> Save to `~/Pictures/Screenshots` + Copy |
| `Print` | Fullscreen >> Save to `~/Pictures/Screenshots` + Copy |

### Window Management (Vim Navigation)
| Keybinding | Action |
|---|---|
| `Super + Q` | Close focused window |
| `Super + F` | Toggle fullscreen |
| `Super + Shift + Space` | Toggle floating mode |
| `Super + P` | Pin window across workspaces |
| `Super + H / J / K / L` | Focus Left / Down / Up / Right (Vim) |
| `Super + Shift + H / J / K / L` | Swap window position (Vim) |
| `Super + Alt + H / J / K / L` | Resize window (Vim) |

---

## Installation

```bash
# Clone with submodules
git clone --recurse-submodules https://github.com/vinay3254/dots-hyprland.git ~/.config/dots-hyprland
cd ~/.config/dots-hyprland

# Run setup
./setup install
```
