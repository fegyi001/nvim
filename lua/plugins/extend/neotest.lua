return {
  { "nvim-neotest/neotest-jest", event = "VeryLazy"
 },
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    opts = { adapters = { "neotest-jest" } },
  },
}
