return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    filetypes = {
      markdown = true,
      lua = true,
      typescript = true,
      html = true,
      javascript = true,
      ["*"] = true,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      -- It is set in nvim-cmp.lua to use <Tab> for accepting
      -- see https://github.com/zbirenbaum/copilot.lua/discussions/99
      -- see https://github.com/zbirenbaum/copilot.lua/issues/91#issuecomment-1345190310
      accept = false,
    },
  },
}
