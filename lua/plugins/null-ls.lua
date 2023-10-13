return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  enabled = false,
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.prettier.with({
          filetypes = { "html", "json", "yaml", "yml", "markdown", "typescriptreact", "javascriptreact" },
        }),
        nls.builtins.formatting.stylelint.with({
          filetypes = { "css", "scss", "sass", "less", "stylus" },
        }),
        nls.builtins.formatting.eslint_d.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
        }),
        nls.builtins.diagnostics.eslint_d.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
        }),
        nls.builtins.diagnostics.stylelint.with({
          filetypes = { "scss", "sass", "less", "stylus" },
        }),
        nls.builtins.code_actions.eslint_d.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
        }),
      },
    }
  end,
}
