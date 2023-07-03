return {
  "simrat39/inlay-hints.nvim",
  enabled = false,
  -- "moliva/inlay-hints.nvim",
  -- branch = "feat/disable-tsserver-adapter",
  init = function()
    local ih = require("inlay-hints")
    local lspconfig = require("lspconfig")
    ih.setup({
      highlight = "Comment",
      prefix = " » ",
      aligned = true,
      only_current_line = false,
      enabled = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
        "vue",
        "html",
        "css",
        "scss",
        "json",
        "yaml",
        "lua",
      },
    })

    lspconfig.lua_ls.setup({
      on_attach = function(c, b)
        ih.on_attach(c, b)
      end,
      settings = {
        Lua = {
          hint = {
            enable = true,
          },
        },
      },
    })

    lspconfig.tsserver.setup({
      on_attach = function(c, b)
        ih.on_attach(c, b)
      end,
      settings = {
        javascript = {
          inlayHints = {
            includeInlayEnumMemberValueHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayVariableTypeHints = true,
          },
        },
        typescript = {
          inlayHints = {
            includeInlayEnumMemberValueHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayVariableTypeHints = true,
          },
        },
      },
    })
  end,
}
