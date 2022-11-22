local autocmd = vim.api.nvim_create_autocmd


local status, _ = pcall(vim.cmd, "colorscheme sonokai")
if not status then
	print("Colorscheme not found!")
	return
end


-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
