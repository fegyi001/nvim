return {
	"echasnovski/mini.animate",
	event = "VeryLazy",
	opts = function()
		return {
			scroll = {
				enable = false,
			},
		}
	end,
	config = function(_, opts)
		require("mini.animate").setup(opts)
	end,
}
