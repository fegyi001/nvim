local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>gg"] = {":LazyGit<CR>"}
  },
}

-- more keybinds!

return M
