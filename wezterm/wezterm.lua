local wezterm = require("wezterm")

local config = wezterm.config_builder()

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "rose-pine-moon"
	else
		return "rose-pine-dawn"
	end
end

local appearance = wezterm.gui.get_appearance()

local scheme = scheme_for_appearance(appearance)

config = {
	automatically_reload_config = true,
	audible_bell = "Disabled",
	enable_tab_bar = true,
	max_fps = 120,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "INTEGRATED_BUTTONS|RESIZE", -- disable the title bar but enable the resizable border
	font = wezterm.font("CaskaydiaMono Nerd Font"),
	font_size = 16,
	initial_rows = 25,
	initial_cols = 85,
	window_padding = {
		left = 20,
		right = 5,
		top = 5,
		bottom = 0,
	},
	color_scheme = scheme,
	colors = {
		selection_fg = "#575279",
		selection_bg = "#f2e9e1",
	},
}

return config
