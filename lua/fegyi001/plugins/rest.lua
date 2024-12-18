return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"rest-nvim/tree-sitter-http",
	},
	config = function()
		require("telescope").load_extension("rest")
		local keymap = vim.keymap
		keymap.set("n", "<leader><leader>rr", "<cmd>:Rest run<cr>", { desc = "[REST] Run request under cursor" })
		keymap.set("n", "<leader><leader>ro", "<cmd>:Rest open<cr>", { desc = "[REST] Open result pane" })
		keymap.set("n", "<leader><leader>rl", "<cmd>:Rest last<cr>", { desc = "[REST] Run last request" })
		keymap.set(
			"n",
			"<leader><leader>re",
			"<cmd>lua require('telescope').extensions.rest.select_env()<cr>",
			{ desc = "Select REST environment" }
		)
	end,
}
