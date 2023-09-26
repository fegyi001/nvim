vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set("n", "'", ":", { nowait = true, desc = "Command mode" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })
vim.keymap.set("n", "<leader>mc", "<cmd> ZenMode<CR>", { desc = "Toggle ZenMode" })
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>ef", "<cmd> NvimTreeFindFile<CR>", { desc = "Focus file in NvimTree" })

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-e>", "<End>")

vim.keymap.set(
  "n",
  "<leader>gs",
  "<cmd>lua require('custom.angular').toggle_between_spec_and_file()<cr>",
  { desc = "Toggle between spec and file" }
)
vim.keymap.set(
  "n",
  "<leader>gd",
  "<cmd>lua require('custom.angular').toggle_between_html_and_ts()<cr>",
  { desc = "Toggle between spec and file" }
)
vim.keymap.set("n", "<leader>bw", "<cmd>bufdo bwipeout<cr>", { desc = "Close all buffers" })

vim.keymap.set("n", "<leader>-", "<cmd>rightbelow split <cr>")
vim.keymap.set("n", "<leader>\\", "<cmd>rightbelow vsplit <cr>")

-- move lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- aerial
vim.keymap.set("n", "<leader>x", "<cmd>AerialToggle!<CR>")

-- jesting
vim.keymap.set("n", "<leader>ja", vim.cmd.Jest)
vim.keymap.set("n", "<leader>jf", vim.cmd.JestFile)
vim.keymap.set("n", "<leader>js", vim.cmd.JestSingle)
vim.keymap.set("n", "<leader>jc", vim.cmd.JestCoverage)

-- greatest keymap ever
-- https://www.youtube.com/watch?v=qZO9A5F6BZs
-- 6:26
vim.keymap.set("x", "<leader>p", '"_dP')

if vim.lsp.inlay_hint then
  vim.keymap.set("n", "<leader>uh", function()
    vim.lsp.inlay_hint(0, nil)
  end, { desc = "Toggle Inlay Hints" })
end

-- M.general = {
--   n = {
--     ["[e"] = { ":<C-u>execute 'move -1-'. v:count1<cr>" },
--     ["]e"] = { ":<C-u>execute 'move +'. v:count1<cr>" },
--     ["[<space>"] = { ":<c-u>put! =repeat(nr2char(10), v:count1)<cr>" },
--     ["]<space>"] = { ":<c-u>put =repeat(nr2char(10), v:count1)<cr>" },
--   },
-- }
