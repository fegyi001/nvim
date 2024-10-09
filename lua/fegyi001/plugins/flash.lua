return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {
		label = {
			rainbow = {
				enabled = true,
				shade = 6,
			},
		},
		highlight = {
			backdrop = false,
		},
		modes = {
			search = {
				highlight = { backdrop = false },
			},
		},
	},
	keys = {
		{
			"j/",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({
					search = {
						mode = function(str)
							return "\\<" .. str
						end,
					},
				})
			end,
			desc = "Flash",
		},
		{
			"<leader>/",
			mode = { "n", "o", "x" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
		{
			"r",
			mode = "o",
			function()
				require("flash").remote()
			end,
			desc = "Remote Flash",
		},
		{
			"R",
			mode = { "o", "x" },
			function()
				require("flash").treesitter_search()
			end,
			desc = "Flash Treesitter Search",
		},
		{
			"<c-s>",
			mode = { "c" },
			function()
				require("flash").toggle()
			end,
			desc = "Toggle Flash Search",
		},
	},
}
