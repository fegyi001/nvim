local opt = vim.opt

---- helper functions ----
local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

local function opt2(scope, key, value)
	scopes[scope][key] = value
	if scope ~= "o" then
		scopes["o"][key] = value
	end
end

opt2("o", "hlsearch", false)
opt2("o", "incsearch", true)

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.equalalways = false

opt.iskeyword:append("-")
