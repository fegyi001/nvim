return {
  "akinsho/flutter-tools.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("flutter")
    vim.keymap.set("n", "<leader>Ft", telescope.extensions.flutter.commands, { desc = "Telescope flutter commands" })
  end,
}
