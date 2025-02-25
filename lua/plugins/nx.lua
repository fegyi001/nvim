return {
  {
    "Equilibris/nx.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
    },
    opts = {
      -- See below for config options
      nx_cmd_root = "npx nx",
    },
    -- Plugin will load when you use these keys
    keys = {
      { "<leader>nxr", "<cmd>Telescope nx actions<CR>", desc = "nx actions" },
      { "<leader>nxg", "<cmd>Telescope nx generators<CR>", desc = "nx generators" },
    },
  },
}
