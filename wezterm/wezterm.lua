local wezterm = require("wezterm")

local action = wezterm.action

return {
	-- default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe' },

	color_scheme = "Atlas (base16)",
	enable_scroll_bar = true,
	-- text_background_opacity = 0.3,
	window_background_opacity = 0.9,
	use_ime = true,
	-- font = wezterm.font("Hurmit Nerd Font"),
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 15,
	window_padding = {
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
	},

	leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		{
			key = '"',
			mods = "LEADER|SHIFT",
			action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "%",
			mods = "LEADER|SHIFT",
			action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "z",
			mods = "LEADER",
			action = action.TogglePaneZoomState,
		},
		{
			key = "LeftArrow",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "LEADER",
			action = action.ActivatePaneDirection("Down"),
		},
		{
			key = "x",
			mods = "LEADER|CTRL",
			action = action.CloseCurrentPane({ confirm = true }),
		},
		{
			key = "F",
			mods = "CTRL",
			action = action.Search({ Regex = "" }),
		},
		{
			key = "n",
			mods = "LEADER|CTRL",
			action = action.SpawnCommandInNewTab({
				domain = "CurrentPaneDomain",
			}),
		},
		{
			key = "c",
			mods = "LEADER",
			action = action.CloseCurrentTab({ confirm = true }),
		},
		{
			key = "LeftArrow",
			mods = "CTRL|SHIFT",
			action = action.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "RightArrow",
			mods = "CTRL|SHIFT",
			action = action.AdjustPaneSize({ "Right", 1 }),
		},
		{
			key = "UpArrow",
			mods = "CTRL|SHIFT",
			action = action.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "DownArrow",
			mods = "CTRL|SHIFT",
			action = action.AdjustPaneSize({ "Down", 1 }),
		},
	},

	ssh_domains = {
		-- ssh template
		-- {
		-- 	name = "mine",
		-- 	remote_address = "192.168.211.110",
		-- 	username = "root",
		-- 	remote_wezterm_path = "/root/Code/wezterm/target/release/wezterm",
		-- 	ssh_option = {
		-- 		identityfile = "C:\\Users\\Administrator\\.ssh\\id_rsa.pub",
		-- 	},
		-- },
		-- wezterm template
		-- {
		-- 	name = "mine.ssh",
		-- 	remote_address = "192.168.211.110",
		-- 	username = "root",
		-- 	multiplexing = "None",
		-- 	ssh_option = {
		-- 		identityfile = "C:\\Users\\Administrator\\.ssh\\id_rsa.pub",
		-- 	},
		-- },
	},
}
