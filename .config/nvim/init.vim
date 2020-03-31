call plug#begin('~/.cache/nvim-plugins')

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-sensible'

call plug#end()

set number
set linebreak
set mouse=a
set smartcase
set lazyredraw

colorscheme onedark
let g:lightline = {'colorscheme': 'onedark'}
let g:onedark_termcolors=16
let g:onedark_terminal_italics=1