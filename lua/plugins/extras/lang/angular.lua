return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("nx.json", "angular.json")(fname) or vim.loop.cwd()
          end,
        },
      },
    },
  },
}
