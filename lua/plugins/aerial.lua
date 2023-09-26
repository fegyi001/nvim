return {
  "stevearc/aerial.nvim",
  config = function()
    local plugin = require("aerial")
    plugin.setup({
      open_automatic = true,
      on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
    })
  end,
}
