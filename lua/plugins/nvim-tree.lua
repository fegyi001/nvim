return {
  "nvim-tree/nvim-tree.lua",
  requires = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")
    nvimtree.setup({
      view = {
        width = 60,
      },
      filters = {
        custom = { "^.git$", "node_modules" },
        git_ignored = true,
        dotfiles = true,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })
  end,
}
