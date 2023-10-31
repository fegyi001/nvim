return {
  "akinsho/flutter-tools.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
    "RobertBrunhage/flutter-riverpod-snippets",
  },
  opts = function()
    local line = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" }
    return {
      ui = { border = line },
      debugger = {
        enabled = false,
        run_via_dap = false,
        exception_breakpoints = {},
      },
      outline = { auto_open = false },
      decorations = {
        statusline = { device = true, app_version = true },
      },
      widget_guides = { enabled = true, debug = false },
      dev_log = { enabled = true, open_cmd = "tabedit" },
      lsp = {
        color = {
          enabled = true,
          background = true,
          virtual_text = false,
        },
        settings = {
          showTodos = false,
          renameFilesWithClasses = "always",
          updateImportsOnRename = true,
          completeFunctionCalls = true,
          lineLength = 100,
        },
      },
    }
  end,
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("flutter")
    vim.keymap.set("n", "<leader>Ft", telescope.extensions.flutter.commands, { desc = "Telescope flutter commands" })
  end,
}
