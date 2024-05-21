return {
	"MysticalDevil/inlay-hints.nvim",
	event = "LspAttach",
	dependencies = { "neovim/nvim-lspconfig" },
	config = function()
		require("inlay-hints").setup({
			commands = { enable = true }, -- Enable InlayHints commands, include `InlayHintsToggle`, `InlayHintsEnable` and `InlayHintsDisable`
			autocmd = { enable = false }, -- Enable the inlay hints on `LspAttach` event
		})
		local keymap = vim.keymap
		keymap.set("n", "<leader>ie", "<cmd> InlayHintsEnable<CR>", { desc = "Enable inlay hints" })
		keymap.set("n", "<leader>id", "<cmd> InlayHintsDisable<CR>", { desc = "Disable inlay hints" })
		keymap.set("n", "<leader>it", "<cmd> InlayHintsToggle<CR>", { desc = "Toggle inlay hints" })
	end,
}
