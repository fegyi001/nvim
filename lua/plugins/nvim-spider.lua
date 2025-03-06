return {
  "chrisgrieser/nvim-spider",
  opts = {},
  enabled = false,
  config = function()
    require("nvim-spider").setup({
      -- skipInsignificantPunctuation = false,
      -- consistentOperatorPending = false, -- see "Consistent Operator-pending Mode" in the README
      -- subwordMovement = true,
      -- customPatterns = {}, -- check "Custom Movement Patterns" in the README for details
    })
  end,
  keys = {
    {
      "w",
      "<cmd>lua require('spider').motion('w')<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to start of next of word",
    },
    {
      "e",
      "<cmd>lua require('spider').motion('e')<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to end of word",
    },
    {
      "b",
      "<cmd>lua require('spider').motion('b')<CR>",
      mode = { "n", "o", "x" },
      desc = "Move to start of previous word",
    },
  },
}
