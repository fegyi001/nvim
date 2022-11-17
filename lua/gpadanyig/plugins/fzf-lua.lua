require("fzf-lua").setup({
	-- files = { cmd = "find -type f" },
	files = {
		fd_opts = "--color=never --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist --exclude artifacts",
	},
})
