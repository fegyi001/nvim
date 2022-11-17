vim.g.mapleader = " "

local keymap = vim.keymap

local nnoremap = require("gpadanyig.keymap").nnoremap

local silent = { silent = true }
---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>ww", ":w<cr>")
keymap.set("n", "<leader>qq", ":q<cr>")

-- disable ALL arrow keys
keymap.set("n", "<up>", "<nop>")
keymap.set("n", "<down>", "<nop>")
keymap.set("n", "<left>", "<nop>")
keymap.set("n", "<right>", "<nop>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab (buffer) management
keymap.set("n", "<S-h>", ":bprevious<CR>") -- go to previous tab
keymap.set("n", "<S-l>", ":bnext<CR>") -- go to next tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- neotree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>t", ":terminal<CR>") -- open terminal

-- telescope
-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

keymap.set("n", "<C-b>", ":set hlsearch!<cr>")

-- fzf-lua
keymap.set("n", "<c-P>", ":lua require('fzf-lua').files()<CR>")
keymap.set("n", "<c-O>", ":lua require('fzf-lua').buffers()<CR>")

-- harpoon
-- keymap.set("n", "<leader>a", "lua require('harpoon.mark').add_file()<CR>")
-- keymap.set("n", "<C-e>", "lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
nnoremap("<leader>a", function()
	require("harpoon.mark").add_file()
end, silent)
nnoremap("<C-e>", function()
	require("harpoon.ui").toggle_quick_menu()
end, silent)

nnoremap("<leader>1", function()
	require("harpoon.ui").nav_file(1)
end, silent)
nnoremap("<leader>2", function()
	require("harpoon.ui").nav_file(2)
end, silent)
nnoremap("<leader>3", function()
	require("harpoon.ui").nav_file(3)
end, silent)
nnoremap("<leader>4", function()
	require("harpoon.ui").nav_file(4)
end, silent)

-- setup mapping to call :LazyGit
-- nnoremap <silent> <leader>gg :LazyGit<CR>
-- nnoremap("<leader>gg", function() require(":LazyGit"))
keymap.set("n", "<leader>gg", ":LazyGit<CR>") -- open terminal
