return {
  {
    "Equilibris/nx.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    event = "VeryLazy",
    opts = {
      nx_cmd_root = "npx nx",
    },
    keys = {
      { "<leader>nxr", "<cmd>Telescope nx actions<CR>", desc = "nx actions" },
      { "<leader>nxg", "<cmd>Telescope nx generators<CR>", desc = "nx generators" },
    },
  },
}
