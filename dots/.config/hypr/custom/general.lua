-- Custom Hyprland General & Decoration Overrides
-- Pure Black #000000 Theme + Clean Gaps & Borders

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 10,
        gaps_workspaces = 50,
        border_size = 2,
        col = {
            active_border = "rgba(00E5FFEE) rgba(7000FFEE) 45deg",
            inactive_border = "rgba(181818AA)"
        },
        resize_on_border = true,
        allow_tearing = true,
        snap = {
            enabled = true,
            window_gap = 6,
            monitor_gap = 10,
            respect_gaps = true
        }
    },
    decoration = {
        rounding = 12,
        rounding_power = 2.0,
        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            xray = true,
            new_optimizations = true,
            contrast = 0.9,
            brightness = 0.9,
            vibrancy = 0.4
        },
        shadow = {
            enabled = true,
            range = 20,
            render_power = 6,
            color = "rgba(000000DD)"
        }
    }
})
