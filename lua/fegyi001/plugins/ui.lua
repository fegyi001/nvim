return {
	{
		"lukas-reineke/virt-column.nvim",
		event = "VeryLazy",
		opts = {
			char = { "┆" },
			virtcolumn = "80",
			highlight = { "SpecialKey" },
		},
	},
	{
		"j-hui/fidget.nvim",
		event = "VeryLazy",
		opts = {
			notification = {
				window = {
					winblend = 0,
					border = "none",
					x_padding = 1,
					y_padding = 0,
				},
			},
		},
	},
}
