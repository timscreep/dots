-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {}
config.font_size = 16.0
config.window_frame = {
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	font_size = 10.0,
	active_titlebar_bg = "#11111B",
	inactive_titlebar_bg = "#11111B",
}

config.colors = {
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		active_tab = {
			bg_color = "1e1e2e",
			fg_color = "#cdd6f4",
		},
		inactive_tab = {
			bg_color = "#11111B",
			fg_color = "#cdd6f4",
		},
		new_tab = {
			bg_color = "#11111B",
			fg_color = "#cdd6f4",
		},
		new_tab_hover = {
			bg_color = "#3b3052",
			fg_color = "#909090",
		},
	},
}
config.keys = {
	{ key = 'F9', mods = 'ALT', action = wezterm.action.ShowTabNavigator },
}
config.color_scheme = "Catppuccin Mocha"
config.enable_wayland = false
return config
