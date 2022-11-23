local overrides = require "custom.plugins.overrides"

return {

  ["kdheepak/lazygit.nvim"] = { disable = false },
  ["nvim-lua/plenary.nvim"] = { disable = false },
  ["dart-lang/dart-vim-plugin"] = { disable = false },
  ["christoomey/vim-tmux-navigator"] = { disable = false },
  ["mattn/emmet-vim"] = { disable = false },

  ["akinsho/flutter-tools.nvim"] = {
    config = function()
      require "custom.plugins.flutter-tools"
    end,
  },

  ["f-person/git-blame.nvim"] = { disable = false },

  ["lewis6991/gitsigns.nvim"] = { disable = false },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
