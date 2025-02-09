return {
	"williamboman/mason.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_installation = true,
			ensure_installed = {
				"angularls",
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"emmet_ls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- LSP
				"angular-language-server",
				"eslint-lsp",
				"html-lsp",
				"json-lsp",
				"lua-language-server",
				"tailwindcss-language-server",
				"typescript-language-server",
				"yaml-language-server",
				"emmet-ls",
				"helm-ls",
				"dockerfile-language-server",
				"docker-compose-language-service",
				"ansible-language-server",
				"nginx-language-server",
				-- "rust-analyzer",
				-- DAP
				-- "dart-debug-adapter",
				-- "js-debug-adapter",
				"codelldb",
				-- Linter
				"ansible-lint",
				"eslint_d",
				"jsonlint",
				"markdownlint",
				"shellcheck",
				"yamllint",
				"commitlint",
				-- Formatter
				"prettier",
				"shfmt",
				"stylua",
				"yamlfmt",
			},
			config = function()
				local lspconfig = require("lspconfig")
				lspconfig.tailwindcss.setup({
					settings = {
						tailwindCSS = {
							experimental = {
								classRegex = {
									{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
									{ "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
								},
							},
						},
					},
				})
			end,
		})
	end,
}
