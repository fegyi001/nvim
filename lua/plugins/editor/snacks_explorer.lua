return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = { explorer = {} },
  keys = {
    {
      "<leader>fE",
      function()
        Snacks.explorer({
          cwd = LazyVim.root({
            hidden = true
          })
        })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>fe",
      function()
        Snacks.explorer({
          hidden = true
        })
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "<leader>E",       "<leader>fE",                            desc = "Explorer Snacks (root dir)", remap = true },
    { "<leader>e",       "<leader>fe",                            desc = "Explorer Snacks (cwd)",      remap = true },
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
  },
}
