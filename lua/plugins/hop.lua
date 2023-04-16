return {
  "phaazon/hop.nvim",
  branch = "v2",
  config = function()
    require("hop").setup()
  end,
  init = function()
    local hop = require("hop")
    local directions = require("hop.hint").HintDirection
    local current_line_only = false
    local multi_windows = true
    vim.keymap.set("", "f", function()
      hop.hint_char2({
        direction = directions.AFTER_CURSOR,
        current_line_only = current_line_only,
        multi_windows = multi_windows,
      })
    end, { remap = true })
    vim.keymap.set("", "F", function()
      hop.hint_char2({
        direction = directions.BEFORE_CURSOR,
        current_line_only = current_line_only,
        multi_windows = multi_windows,
      })
    end, { remap = true })
    vim.keymap.set("", "t", function()
      hop.hint_char2({
        direction = directions.AFTER_CURSOR,
        current_line_only = current_line_only,
        multi_windows = multi_windows,
        hint_offset = -1,
      })
    end, { remap = true })
    vim.keymap.set("", "T", function()
      hop.hint_char2({
        direction = directions.BEFORE_CURSOR,
        current_line_only = current_line_only,
        multi_windows = multi_windows,
        hint_offset = 1,
      })
    end, { remap = true })
  end,
}
