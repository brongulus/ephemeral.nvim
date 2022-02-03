local ephemeral = (vim.o.background == "dark")
		and {
			--16 colors
			ephemeral0_gui = "#323F4E", -- ephemeral0 in palette
			ephemeral1_gui = "#3B4252", -- ephemeral1 in palette
			ephemeral2_gui = "#434C5E", -- ephemeral2 in palette
			ephemeral3_gui = "#4C566A", -- ephemeral3 in palette
			ephemeral3_gui_bright = "#616E88", -- out of palette
			ephemeral4_gui = "#D8DEE9", -- ephemeral4 in palette
			ephemeral5_gui = "#E5E9F0", -- ephemeral5 in palette
			ephemeral6_gui = "#ECEFF4", -- ephemeral6 in palette
			ephemeral7_gui = "#8FBCBB", -- ephemeral7 in palette
			ephemeral8_gui = "#88C0D0", -- ephemeral8 in palette
			ephemeral9_gui = "#81A1C1", -- ephemeral9 in palette
			ephemeral10_gui = "#5E81AC", -- ephemeral10 in palette
			ephemeral11_gui = "#BF616A", -- ephemeral11 in palette
			ephemeral12_gui = "#D08770", -- ephemeral12 in palette
			ephemeral13_gui = "#EBCB8B", -- ephemeral13 in palette
			ephemeral14_gui = "#A3BE8C", -- ephemeral14 in palette
			ephemeral15_gui = "#BD99FF", -- ephemeral15 in palette
			float = ephemeral0_gui,
			none = "NONE",
		}
	or {
		--16 colors
		ephemeral0_gui = "#ECEFF4", -- ephemeral6 in palette
		ephemeral1_gui = "#E5E9F0", -- ephemeral5 in palette
		ephemeral2_gui = "#D8DEE9", -- ephemeral4 in palette
		ephemeral3_gui = "#4C566A", -- ephemeral3 in palette
		ephemeral3_gui_bright = "#AEC7DF", -- out of palette
		ephemeral4_gui = "#434C5E", -- ephemeral2 in palette
		ephemeral5_gui = "#3B4252", -- ephemeral1 in palette
		ephemeral6_gui = "#323F4E", -- ephemeral0 in palette
		ephemeral7_gui = "#8FBCBB", -- ephemeral7 in palette
		ephemeral8_gui = "#88C0D0", -- ephemeral8 in palette
		ephemeral9_gui = "#81A1C1", -- ephemeral9 in palette
		ephemeral10_gui = "#92B6F4", -- ephemeral10 in palette
		ephemeral11_gui = "#F48FB1", -- ephemeral11 in palette
		ephemeral12_gui = "#D08770", -- ephemeral12 in palette
		ephemeral13_gui = "#F1FA8C", -- ephemeral13 in palette
		ephemeral14_gui = "#53E2AE", -- ephemeral14 in palette
		ephemeral15_gui = "#BD99FF", -- ephemeral15 in palette
		float = ephemeral1_gui,
		none = "NONE",
	}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.ephemeral_contrast then
	ephemeral.sidebar = ephemeral.ephemeral1_gui
	ephemeral.float = ephemeral.ephemeral1_gui
else
	ephemeral.sidebar = ephemeral.ephemeral0_gui
	ephemeral.float = ephemeral.ephemeral0_gui
end

if vim.g.ephemeral_cursorline_transparent then
	ephemeral.cursorlinefg = ephemeral.ephemeral0_gui
else
	ephemeral.cursorlinefg = ephemeral.ephemeral1_gui
end

return ephemeral
