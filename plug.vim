
call plug#begin('~/.config/nvim/plugged')

if has("nvim")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}	
	Plug 'windwp/nvim-autopairs'
	Plug 'dart-lang/dart-vim-plugin'
  Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'phanviet/vim-monokai-pro'
endif	

call plug#end()
