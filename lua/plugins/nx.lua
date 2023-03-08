return {
  "Equilibris/nx.nvim",
  opts = {
    config = function()
      require("nx").setup({
        nx_cmd_root = "nx",
        command_runner = require("nx.command-runners").terminal_command_runner(),
        form_renderer = require("nx.form-renderers").telescope_form_renderer(),
        read_init = true,
      })
    end,
  },
}
