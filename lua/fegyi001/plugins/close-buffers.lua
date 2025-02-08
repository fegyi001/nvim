return {
	"kazhala/close-buffers.nvim",
	event = "VeryLazy",
	config = function()
		local keymap = vim.keymap -- for conciseness
		keymap.set(
			"n",
			"<leader>bo",
			"<cmd>lua require('close_buffers').wipe({ type = 'other' })<cr>",
			{ desc = "Close other buffers" }
		)
	end,
}
