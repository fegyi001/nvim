
call plug#begin('~/.config/nvim/plugged')

if has("nvim")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}	
	Plug 'windwp/nvim-autopairs'
  Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'ThePrimeagen/vim-be-good'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'ThePrimeagen/harpoon'

  " Snippets
  Plug 'natebosch/dartlang-snippets'

  " Language support
  Plug 'jiangmiao/auto-pairs'

  " Dart
	Plug 'dart-lang/dart-vim-plugin'

  " Typescript
  Plug 'ianks/vim-tsx'
  Plug 'leafgarland/typescript-vim'
endif	

call plug#end()
