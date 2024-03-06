return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSP
      "angular-language-server",
      "eslint-lsp",
      "html-lsp",
      "json-lsp",
      "lua-language-server",
      "tailwindcss-language-server",
      "typescript-language-server",
      "yaml-language-server",
      "emmet-ls",
      "dockerfile-language-server",
      "hadolint",
      "docker-compose-language-service",
      "ansible-language-server",
      "nginx-language-server",
      -- DAP
      -- "dart-debug-adapter",
      -- "js-debug-adapter",
      -- Linter
      "ansible-lint",
      "eslint_d",
      "jsonlint",
      "markdownlint",
      "shellcheck",
      "yamllint",
      "commitlint",
      -- Formatter
      "prettier",
      "shfmt",
      "stylua",
      "yamlfmt",
    },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.tailwindcss.setup({
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              },
            },
          },
        },
      })
    end,
  },
}
