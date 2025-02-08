return {
	"ThePrimeagen/git-worktree.nvim",
	event = "VeryLazy",
	config = function()
		local worktree = require("git-worktree")
		local telescope = require("telescope")
		local keymap = vim.keymap
		worktree.setup()
		telescope.load_extension("git_worktree")
		keymap.set(
			"n",
			"<leader>gwr",
			"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
			{ noremap = true, silent = true, desc = "List git worktrees" }
		)
		keymap.set(
			"n",
			"<leader>gwR",
			"<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
			{ noremap = true, silent = true, desc = "Create git worktree" }
		)
	end,
}
