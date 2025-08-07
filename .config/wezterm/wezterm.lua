-- Loading the wezterm module
local wezterm = require("wezterm")

-- configuration object
local config = wezterm.config_builder()

-- Font options
config.font = wezterm.font({
	family = "CaskaydiaCove Nerd Font",
	harfbuzz_features = { "calt", "liga", "clig" },
})
config.font_size = 13

-- ColorScheme
config.color_scheme = "Catppuccin Macchiato"

-- Window Customization
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = "2px",
	right = "2px",
	top = "2px",
	bottom = "2px",
}

-- Cursor customization
config.default_cursor_style = "BlinkingBar"

-- Misc
config.animation_fps = 120

-- Returning the config
return config
