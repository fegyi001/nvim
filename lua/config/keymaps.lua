local keymap = vim.keymap

-- Instead of mapping <C-s> to :w<CR>, use a function to save the buffer.
-- Because otherwise a popup will be shown when saving and it is annoying.
local function save_buffer()
  local buftype = vim.bo.buftype
  if buftype == "" then
    vim.cmd("write")
  else
    print("Cannot write: buffer type is '" .. buftype .. "'")
  end
end

-- Exit insert mode with jk or JK
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "JK", "<ESC>", { desc = "Exit insert mode with JK" })

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
