return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      pickers = {
        find_files = {
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
        live_grep = {
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
        oldfiles = {
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
        grep_string = {
          additional_args = function(opts)
            return { "--hidden" }
          end,
        },
      },
      defaults = {
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
        file_ignore_patterns = {
          "node_modules/*",
          ".angular/*",
          ".yarn/*",
          ".nx/*",
          ".git/*",
          "dist/*",
          "build/*",
          "package-lock.json",
          "yarn.lock",
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles hidden=true<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep hidden=true<cr>", { desc = "Find string in cwd" })
    keymap.set(
      "n",
      "<leader>fc",
      "<cmd>Telescope grep_string hidden=true<cr>",
      { desc = "Find string under cursor in cwd" }
    )
    keymap.set("n", "<leader>fh", "<cmd>Telescope harpoon marks hidden=true<cr>", { desc = "Find harpoon marks" })
  end,
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        prompt_position = "top",
        horizontal = { width = 0.9, height = 0.95, preview_height = 0.5 },
      },
      sorting_strategy = "ascending",
      winblend = 10,
    },
  },
}
