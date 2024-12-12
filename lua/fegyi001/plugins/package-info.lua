return {
	{
		"vuki656/package-info.nvim",
		ft = "json",
		dependencies = { "MunifTanjim/nui.nvim" },
		config = function()
			local packageinfo = require("package-info")
			packageinfo.setup({
				package_manager = "npm",
				colors = {
					outdated = "#d19a66",
					invalid = "#ee4b2b",
				},
				icons = {
					enable = true, -- Whether to display icons
					style = {
						up_to_date = "|  ", -- Icon for up to date dependencies
						outdated = "|  ", -- Icon for outdated dependencies
						invalid = "|  ", -- Icon for invalid dependencies
					},
				},
				autostart = false,
				hide_up_to_date = true,
				hide_unstable_versions = true,
			})
			vim.keymap.set(
				{ "n" },
				"<leader>nt",
				packageinfo.toggle,
				{ silent = true, noremap = true, desc = "Toggle dependency versions" }
			)
			vim.keymap.set(
				{ "n" },
				"<leader>nu",
				packageinfo.update,
				{ silent = true, noremap = true, desc = "Update dependency on the line" }
			)
			vim.keymap.set(
				{ "n" },
				"<leader>np",
				packageinfo.change_version,
				{ silent = true, noremap = true, desc = "Install a different dependency version" }
			)
		end,
	},
}
