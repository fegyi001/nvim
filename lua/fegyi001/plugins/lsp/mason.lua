return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
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
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
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
				"dockerfile-language-server",
				"docker-compose-language-service",
				"ansible-language-server",
				"nginx-language-server",
				-- DAP
				-- "dart-debug-adapter",
				-- "js-debug-adapter",
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
