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
      -- DAP
      "dart-debug-adapter",
      "js-debug-adapter",
      -- Linter
      "ansible-lint",
      "eslint_d",
      "jsonlint",
      "markdownlint",
      "shellcheck",
      "yamllint",
      -- Formatter
      "prettier",
      "prettierd",
      "shfmt",
      "stylua",
      "yamlfmt",
    },
  },
}
