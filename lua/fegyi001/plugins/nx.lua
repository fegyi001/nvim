return {
	"Equilibris/nx.nvim",
	enabled = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		nx_cmd_root = "npx nx",
	},
	keys = {
		{
			"<leader>nx",
			"<cmd>Telescope nx generators<CR>",
			desc = "nx generators",
		},
	},
}
