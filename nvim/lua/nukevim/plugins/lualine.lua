local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local w = require("weather")

local line = function()
	return w.strfeed
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_c = { line, "filename", "hostname" },
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
