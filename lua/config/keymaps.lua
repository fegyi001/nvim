-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "JK", "<ESC>", { desc = "Exit insert mode with JK" })
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-e>", "<End>")

keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })

-- greatest keymap ever
-- https://www.youtube.com/watch?v=qZO9A5F6BZs
-- 6:26
keymap.set("x", "<leader>p", '"_dP')

-- Other stuff
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
-- keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
-- keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
-- keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })
