return {
	"MagicDuck/grug-far.nvim",
	event = "VeryLazy",
	config = function()
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>r", "<cmd>:GrugFar<cr>", { desc = "Search and replace" })
		require("grug-far").setup({
			-- engine = 'ripgrep' is default, but 'astgrep' can be specified
			-- engine = "astgrep",
		})
	end,
}
