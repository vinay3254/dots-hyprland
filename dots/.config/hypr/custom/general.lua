-- Hyprland Custom Configuration
-- Built following Apple Design Principles (Fluid Springs, Natural Decay, Translucent Materials, 1:1 Gestures)

-- 1. General & Layout Settings
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 10,
        gaps_workspaces = 50,
        border_size = 0,
        col = {
            active_border = "rgba(00000000)",
            inactive_border = "rgba(00000000)"
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
    gestures = {
        -- 1:1 Direct Manipulation Trackpad Responsiveness (Apple trackpad feel)
        workspace_swipe_distance = 320,
        workspace_swipe_cancel_ratio = 0.15,
        workspace_swipe_min_speed_to_force = 10,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true
    },
    decoration = {
        -- Continuous Curvature (Apple squircle contour)
        rounding = 14,
        rounding_power = 2.2,
        dim_inactive = true,
        dim_strength = 0.06,
        dim_special = 0.3,
        blur = {
            enabled = true,
            size = 12,
            passes = 3,
            xray = true,
            new_optimizations = true,
            contrast = 0.92,
            brightness = 0.95,
            vibrancy = 0.65,
            vibrancy_darkness = 0.2
        },
        shadow = {
            enabled = true,
            range = 30,
            render_power = 4,
            offset = {0, 4},
            color = "rgba(00000088)"
        }
    }
})

-- 2. Apple Fluid Motion & Spring Animation Curves
hl.curve("appleSpring", {
    type = "bezier",
    points = {{0.16, 1.0}, {0.30, 1.0}}
})
hl.curve("appleEase", {
    type = "bezier",
    points = {{0.05, 0.90}, {0.10, 1.0}}
})
hl.curve("appleSnappy", {
    type = "bezier",
    points = {{0.20, 0.0}, {0.0, 1.0}}
})

-- Window Opening & Closing Physics
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.2,
    bezier = "appleSpring",
    style = "popin 92%"
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 3.5,
    bezier = "appleSnappy",
    style = "popin 95%"
})
hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 4.0,
    bezier = "appleSpring",
    style = "slide"
})

-- UI Layers & Popups (Control Center, Notifications, OSD)
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 3.8,
    bezier = "appleSpring",
    style = "popin 94%"
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 3.0,
    bezier = "appleSnappy",
    style = "popin 96%"
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 3.0,
    bezier = "appleEase"
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 2.5,
    bezier = "appleSnappy"
})

-- Workspaces Transition (Spaces Inertial Swipe)
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 5.0,
    bezier = "appleSpring",
    style = "slide"
})
