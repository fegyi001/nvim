return {
  "simrat39/inlay-hints.nvim",
  enabled = false,
  -- "moliva/inlay-hints.nvim",
  -- branch = "feat/disable-tsserver-adapter",
  init = function()
    require("neodev").setup({
      library = {
        enabled = true, -- when not enabled, neodev will not change any settings to the LSP server
        -- these settings will be used for your Neovim config directory
        runtime = true, -- runtime path
        types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
        plugins = true, -- installed opt or start plugins in packpath
        -- you can also specify the list of plugins to make available as a workspace library
        -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
      },
      setup_jsonls = true, -- configures jsonls to provide completion for project specific .luarc.json files
      -- for your Neovim config directory, the config.library settings will be used as is
      -- for plugin directories (root_dirs having a /lua directory), config.library.plugins will be disabled
      -- for any other directory, config.library.enabled will be set to false
      override = function(root_dir, options) end,
      -- With lspconfig, Neodev will automatically setup your lua-language-server
      -- If you disable this, then you have to set {before_init=require("neodev.lsp").before_init}
      -- in your lsp start options
      lspconfig = true,
      -- much faster, but needs a recent built of lua-language-server
      -- needs lua-language-server >= 3.6.0
      pathStrict = true,
    })
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
