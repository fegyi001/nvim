return {
  "max397574/better-escape.nvim",
  event = "VeryLazy",
  config = function()
    require("better_escape").setup({
      timeout = 80,
      default_mappings = true,
      mappings = {
        i = {
          j = {
            k = "<Esc>",
          },
          J = {
            K = "<Esc>",
          },
        },
        c = {
          j = {
            k = "<Esc>",
            j = "<Esc>",
          },
        },
        t = {
          j = {
            k = "<C-\\><C-n>",
          },
        },
        v = {
          j = {
            k = "<Esc>",
          },
        },
        s = {
          j = {
            k = "<Esc>",
          },
        },
      },
    })
  end,
}
