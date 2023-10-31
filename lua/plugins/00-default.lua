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
    enabled = false,
  },
  { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
  },
}
