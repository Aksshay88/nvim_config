vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--genaral keyymaps

keymap.set("i", "jj", "<ESC>") -- i -> n

keymap.set("n", "<leader>c", ":nohl<CR>") --cls search

keymap.set("n", "x", '"_x') --delete without copy

keymap.set("n", "<leader>+", "<C-a>") --increment

keymap.set("n", "<leader>-", "<C-x>") --decrement

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>tn", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tr", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tl", ":tabp<CR>") --  go to previous tab

-- code-runner
keymap.set("n", "<leader>pr", ":!python %:r.py<CR>")
keymap.set("n", "<leader>cr", ":!gcc %:r.c -o %:r.out && %:r.out<CR>")
keymap.set("n", "<leader>cpr", ":!g++ %:r.cpp -o %:r.out && %:r.out<CR>")

-- plugin keymaps

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>") -- find recent files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "tt", ":NvimTreeToggle<CR>")
keymap.set("n", "tr", ":NvimTreeRefresh<CR>")
--TransparentToggle
keymap.set("n", "bt", ":TransparentToggle<CR>")
