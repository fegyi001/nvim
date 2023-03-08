return {
  "brenoprata10/nvim-highlight-colors",
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
