# Hyprland Overview (Quickshell)

Tokyo Night themed workspace overview/switcher for Hyprland built with Quickshell.

Based on [JaKooLit/Hyprland-Dots](https://github.com/JaKooLit/Hyprland-Dots) with layout and transparency tweaks.
Works with [Omarchy](https://github.com/anomalyco/omarchy) desktop configuration.

## Requirements

- **Hyprland** (Wayland compositor)
- **Quickshell** – QML-based shell framework (>= Qt 6.11)
- **Qt 6.11+** with modules:
  - `qt6-base` (QtQuick, QtQuick.Controls, QtQuick.Layouts)
  - `qt6-quickeffects` (QtQuick.Effects)
  - `qt6-shadertools` (Shader effects)
- **jq** – for parsing `hyprctl` JSON output
- **Tokyo Night** color scheme (included)

## Installation

1. Clone into config directory:
   ```
   git clone https://github.com/THEBOSS9345/hyprland-overview.git ~/.config/quickshell/overview
   ```

2. Install Quickshell from AUR (Arch):
   ```
   yay -S quickshell
   ```
   Or build from source: https://github.com/Quickshell/Quickshell

3. Bind a key in your Hyprland config:
   ```
   bind = $mod, TAB, exec, quickshell --config overview --cmd overview.toggle
   ```

4. Launch the shell (optional, for debugging):
   ```
   quickshell --config overview
   ```

## Keybinds (inside overview)

| Key | Action |
|-----|--------|
| `ESC` / `Enter` | Close overview |
| Arrow keys | Switch workspace |
| Left click on window | Focus window |
| Middle click on window | Close window |
| Drag window | Move window to workspace |

## File Structure

```
~/.config/quickshell/overview/
├── shell.qml                  # Entry point
├── config.json                # User config (scale, rows, cols)
├── common/
│   ├── Appearance.qml         # Tokyo Night color definitions
│   ├── Config.qml             # Default config values
│   ├── functions/
│   │   └── ColorUtils.qml     # Color manipulation utilities
│   └── widgets/               # Reusable widgets
├── modules/overview/
│   ├── Overview.qml           # PanelWindow shell, keyboard handler
│   ├── OverviewWidget.qml     # Workspace grid layout
│   └── OverviewWindow.qml     # Window preview card
└── services/
    ├── GlobalStates.qml       # Global state (overview open/close)
    └── HyprlandData.qml       # Window/monitor data from hyprctl
```
