return {
  "brenoprata10/nvim-highlight-colors",
  event = "VeryLazy",
  opts = {
    config = function()
      require("nvim-highglight-colors").setup({
        render = "first_column",
        enable_named_colors = true,
        enable_tailwind = false,
      })
    end,
  },
}
