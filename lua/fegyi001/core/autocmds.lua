local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- local function set_jenkinsfile_filetype()
-- 	vim.cmd("autocmd BufNewFile,BufRead *Jenkinsfile* set filetype=groovy")
-- end
-- set_jenkinsfile_filetype()

vim.api.nvim_create_autocmd("FileType", {
	group = augroup("wrap_spell"),
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = false
	end,
})

-- vim.api.nvim_create_autocmd("VimLeavePre", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.cmd("SessionSave")
-- 	end,
-- })

-- Auto format on exiting insert mode
-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.lsp.buf.format({ async = true })
-- 	end,
-- })
