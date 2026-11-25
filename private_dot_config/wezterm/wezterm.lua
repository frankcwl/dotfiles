local wezterm = require("wezterm")
local act = wezterm.action

return {
	-- 字体
	font_size = 16.0,
	use_ime = true,

	-- 配置字体回退链
	font = wezterm.font_with_fallback({
		"MesloLGS NF",
		"Noto Sans CJK SC", -- 中文支持
		"Noto Sans CJK JP", -- 日文支持
		"Noto Sans CJK KR", -- 韩文支持
	}),

	-- 颜色主题（官方内置很多）
	color_scheme = "Gnometerm (terminal.sexy)",

	-- 窗口
	enable_wayland = false,
	window_decorations = "RESIZE",
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
	initial_cols = 90,
	initial_rows = 24,
	window_background_opacity = 0.75,
	audible_bell = "Disabled",

	-- 标签栏
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,

	-- 光标
	default_cursor_style = "BlinkingBar",

	-- 关闭时不提示
	window_close_confirmation = "NeverPrompt",

	-- 快捷键
	mouse_bindings = {
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = act.PasteFrom("Clipboard"),
		},
	},
}
