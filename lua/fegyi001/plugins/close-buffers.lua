return {
	"kazhala/close-buffers.nvim",
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
