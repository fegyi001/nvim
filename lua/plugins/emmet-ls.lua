return {
  "aca/emmet-ls",
  event = "VeryLazy",
  init = function()
    local lspconfig = require("lspconfig")
    -- local configs = require("lspconfig/configs")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.angularls.setup({
      capabilities = capabilities,
      filetypes = { "html", "typescript" },
      root_dir = lspconfig.util.root_pattern("nx.json", "angular.json"),
    })

    lspconfig.emmet_ls.setup({
      -- on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
      init_options = {
        html = {
          options = {
            -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
            ["bem.enabled"] = true,
          },
        },
      },
    })
  end,
}
