vim.cmd("colorscheme monokai_pro")

local status, _ = pcall(vim.cmd, "colorscheme monokai_pro")
if not status then 
  print("Colorscheme not found!")
  return
end
