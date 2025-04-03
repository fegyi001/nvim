local util = require("lspconfig.util")

return {
  "pmizio/typescript-tools.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = {
      code_lens = "off",
      complete_function_calls = false,
      include_completions_with_insert_text = true,
      separate_diagnostic_server = true,
      publish_diagnostic_on = "insert_leave",
      tsserver_path = nil,
      tsserver_max_memory = 20000,
      tsserver_format_options = {},
      tsserver_file_preferences = {
        includeInlayParameterNameHints = "none",
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = false,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayEnumMemberValueHints = true,
        completions = { completeFunctionCalls = false },
        init_options = { preferences = { disableSuggestions = true } },
        importModuleSpecifierPreference = "project-relative",
        jsxAttributeCompletionStyle = "braces",
      },
      tsserver_locale = "en",
      disable_member_code_lens = true,
    },
    root_dir = util.root_pattern(".git", "yarn.lock", "package-lock.json", "nx.json"),
  },
}
