return {
  {
    "stevearc/oil.nvim",
    dependencies = { "DaikyXendo/nvim-material-icon" },
    event = "VeryLazy",
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        columns = { "icon" },
        keymaps = {
          ["g?"] = "actions.show_help",
          ["<CR>"] = "actions.select",
          ["<C-s>"] = "actions.select_vsplit",
          ["<C-h>"] = "actions.select_split",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["<C-l>"] = "actions.refresh",
          ["-"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["gs"] = "actions.change_sort",
          ["gx"] = "actions.open_external",
          ["g."] = "actions.toggle_hidden",
          ["g\\"] = "actions.toggle_trash",
        },
        view_options = {
          show_hidden = true,
          natural_order = true,
          is_always_hidden = function(name, _)
            return name == ".git" or name == "node_modules"
          end,
        },
        win_options = {
          wrap = true,
        },
      })

      vim.keymap.set("n", "<leader>oo", "<cmd>Oil<CR>", { desc = "Open parent directory" })
      vim.keymap.set(
        "n",
        "<leader>of",
        require("oil").toggle_float,
        { desc = "Open parent directory in floating window" }
      )
    end,
  },
}
