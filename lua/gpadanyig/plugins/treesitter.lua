-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

local m = require("markid")

m.colors = {
	dark = {
		"#619e9d",
		"#9E6162",
		"#81A35C",
		"#7E5CA3",
		"#9E9261",
		"#616D9E",
		"#97687B",
		"#689784",
		"#999C63",
		"#66639C",
	},
	bright = {
		"#f5c0c0",
		"#f5d3c0",
		"#f5eac0",
		"#dff5c0",
		"#c0f5c8",
		"#c0f5f1",
		"#c0dbf5",
		"#ccc0f5",
		"#f2c0f5",
		"#98fc03",
	},
	medium = {
		"#c99d9d",
		"#c9a99d",
		"#c9b79d",
		"#c9c39d",
		"#bdc99d",
		"#a9c99d",
		"#9dc9b6",
		"#9dc2c9",
		"#9da9c9",
		"#b29dc9",
	},
}

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
	markid = {
		enable = true,
		colors = m.colors.medium,
	},
})
