local keymap = vim.keymap

-- Move around with Ctrl-h, Ctrl-j, Ctrl-k, Ctrl-l in insert mode
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-e>", "<End>")

-- Save with Ctrl-s
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })

-- greatest keymap ever
-- https://www.youtube.com/watch?v=qZO9A5F6BZs
-- 6:26
keymap.set("x", "<leader>P", '"_dP')

-- Other stuff
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>ff", LazyVim.pick("files", { root = false }), { desc = "Find Files" })
keymap.set("n", "<leader><space>", LazyVim.pick("files", { root = false }), { desc = "Find Files" })
keymap.set("n", "<leader>fF", LazyVim.pick("files"), { desc = "Find Files (cwd)" })
keymap.set("n", "<leader>/", LazyVim.pick("grep", { root = false }), { desc = "Grep (Root Dir)" })
