return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("harpoon")
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<leader>hm",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      { desc = "Mark file with harpoon" }
    )
    keymap.set(
      "n",
      "<leader>hh",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Open harpoon quick menu" }
    )
    keymap.set("n", "<leader>ht", "<cmd>Telescope harpoon marks<cr>", { desc = "Find telescope harpoon marks" })
    keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    keymap.set(
      "n",
      "<leader>hp",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Go to harpoon mark 1" })
    keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Go to harpoon mark 2" })
    keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Go to harpoon mark 3" })
    keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Go to harpoon mark 4" })
    keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Go to harpoon mark 5" })
  end,
}
