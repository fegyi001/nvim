return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          filetypes = { "typescript", "html", "htmlangular" },
          root_dir = function(fname)
            -- Detect angular or Nx specific files in the current working directory
            local root_pattern = require("lspconfig.util").root_pattern("nx.json", "angular.json")
            local root = root_pattern(fname) or vim.loop.cwd()
            -- Check if package.json exists in the root
            local package_json_path = root .. "/package.json"
            local package_json = io.open(package_json_path, "r")
            if package_json then
              local content = package_json:read("*a")
              package_json:close()
              -- Check if package.json contains "@angular/core"
              if content:find('"@angular/core"') then
                return root
              end
            end
            -- Fallback to the current working directory if conditions are not met
            return vim.loop.cwd()
          end,
        },
      },
    },
  },
}
