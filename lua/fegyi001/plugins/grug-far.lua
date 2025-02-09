return {
	"MagicDuck/grug-far.nvim",
	event = "VeryLazy",
	config = function()
		local grug = require("grug-far")
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>r", "<cmd>:GrugFar<cr>", { desc = "Search and replace" })
		require("grug-far").setup({
			-- options, see Configuration section below
			-- there are no required options atm
			-- engine = 'ripgrep' is default, but 'astgrep' can be specified
		})
	end,
}
