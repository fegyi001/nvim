return {
  {
    "loctvl842/monokai-pro.nvim",
    event = "VimEnter",
    enabled = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme monokai-pro")
      local plugin = require("monokai-pro")
      plugin.setup({
        transparent_background = false,
        terminal_colors = false,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        styles = {
          comment = { italic = true },
          keyword = { italic = true },       -- any other keyword
          type = { italic = true },          -- (preferred) int, long, char, etc
          storageclass = { italic = true },  -- static, register, volatile, etc
          structure = { italic = true },     -- struct, union, enum, etc
          parameter = { italic = true },     -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = "pro",                      -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
          enable = false,            -- turn off by default
          day_filter = "pro",        -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = "background",   -- underline | background
        background_clear = {
          "float_win",
          "toggleterm",
          "telescope",
          "which-key",
          "renamer",
          "notify",
          "nvim-tree",
          "neo-tree",
          "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
            underline_fill = true,
            bold = false,
          },
          indent_blankline = {
            context_highlight = "pro", -- default | pro
            context_start_underline = false,
          },
        },
        override = function(c)
          return {
            LspInlayHint = { bg = c.editor.background, fg = c.editorInlayHint.foreground },
          }
        end,
      })
    end,
  },
}
