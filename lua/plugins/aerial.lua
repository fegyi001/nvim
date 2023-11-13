return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  config = function()
    local plugin = require("aerial")
    plugin.setup({
      open_automatic = false,
      on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        vim.keymap.set("n", "<leader>x", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial" })
      end,
    })
  end,
}
