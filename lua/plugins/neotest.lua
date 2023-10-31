return {
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    dependencies = {
      "haydenmeade/neotest-jest",
      "marilari88/neotest-vitest",
      "sidlatau/neotest-dart",
    },
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
      {
        "<leader>tL",
        function()
          require("neotest").run.run_last({ strategy = "dap" })
        end,
        desc = "Debug Last Test",
      },
      {
        "<leader>tw",
        "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
        desc = "Run Watch",
      },
    },
    opts = function(_, opts)
      vim.list_extend(opts.adapters, {
        require("neotest-dart")({ command = "flutter" }),
      })
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "yarn nx test --",
          jestConfigFile = "jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
