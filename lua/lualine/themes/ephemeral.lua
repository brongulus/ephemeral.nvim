local colors = require("ephemeral.colors")

local ephemeral = {}

ephemeral.normal = {
	a = { fg = colors.ephemeral1_gui, bg = colors.ephemeral9_gui },
	b = { fg = colors.ephemeral5_gui, bg = colors.ephemeral2_gui },
	c = { fg = colors.ephemeral4_gui, bg = colors.ephemeral1_gui },
}

ephemeral.insert = {
	a = { fg = colors.ephemeral1_gui, bg = colors.ephemeral4_gui },
	b = { fg = colors.ephemeral6_gui, bg = colors.ephemeral3_gui_bright },
}

ephemeral.visual = {
	a = { fg = colors.ephemeral0_gui, bg = colors.ephemeral9_gui },
	b = { fg = colors.ephemeral4_gui, bg = colors.ephemeral10_gui },
}

ephemeral.replace = {
	a = { fg = colors.ephemeral0_gui, bg = colors.ephemeral11_gui },
	b = { fg = colors.ephemeral4_gui, bg = colors.ephemeral10_gui },
}

ephemeral.command = {
	a = { fg = colors.ephemeral0_gui, bg = colors.ephemeral15_gui, gui = "bold" },
	b = { fg = colors.ephemeral4_gui, bg = colors.ephemeral10_gui },
}

ephemeral.inactive = {
	a = { fg = colors.ephemeral4_gui, bg = colors.ephemeral0_gui, gui = "bold" },
	b = { fg = colors.ephemeral4_gui, bg = colors.ephemeral0_gui },
	c = { fg = colors.ephemeral4_gui, bg = colors.ephemeral1_gui },
}

return ephemeral
