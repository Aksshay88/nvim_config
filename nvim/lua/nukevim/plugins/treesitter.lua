require("nvim-treesitter.install").prefer_git = false
require("nvim-treesitter.install").compilers = { "clang" }

-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"typescript",
		"css",
		"lua",
		"vim",
		"c",
		"cpp",
		"java",
		"javascript",
		"python",
		"html",
		"markdown",
		"markdown_inline",
	},
	-- auto install above language parsers
	auto_install = true,
})
