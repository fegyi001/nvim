return {
  {
    "neovim/nvim-lspconfig",
    -- https://github.com/neovim/neovim/issues/26520
    config = function()
      local capabilities = vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = false,
          },
        },
      })
    end,
    opts = {
      -- capabilities = {
      --   workspace = {
      --     didChangeWatchedFiles = {
      --       dynamicRegistration = false,
      --     },
      --   },
      -- },
      servers = {
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                -- taken from https://github.com/typescript-language-server/typescript-language-server#workspacedidchangeconfiguration
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
              },
            },
            javascript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
              },
            },
          },
        },
      },
    },
  },
}
