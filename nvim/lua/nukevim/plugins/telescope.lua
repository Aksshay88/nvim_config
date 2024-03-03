local builtin = require("telescope.builtin")

local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				-- MAPPINGS
			},
		},
		file_ignore_patterns = { "node_modules" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})
