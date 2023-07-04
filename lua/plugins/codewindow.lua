return {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup()
    codewindow.apply_default_keybinds()
    vim.api.nvim_set_hl(0, "CodewindowBorder", { fg = "#222436" })
  end,
}
