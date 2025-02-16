return {
  "chrisgrieser/nvim-rip-substitute",
  keys = {
    {
      "<leader>s/",
      function()
        require("rip-substitute").sub()
      end,
      mode = { "n", "x" },
      desc = "Rip Substitute",
    },
  },
}
