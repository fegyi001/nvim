return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
      -- colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
  },
  { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
  },
}
