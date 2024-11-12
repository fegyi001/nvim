return {
	"nvim-pack/nvim-spectre",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>rr", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
		keymap.set("n", "<leader>rw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
			desc = "Search current word",
		})
		keymap.set("v", "<leader>rw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
			desc = "Search current word",
		})
		keymap.set("n", "<leader>rf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
			desc = "Search on current file",
		})
	end,
}
