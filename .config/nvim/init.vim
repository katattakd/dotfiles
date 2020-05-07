call plug#begin('~/.local/share/nvim/plugged')

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
set list
autocmd FileType * setlocal noexpandtab

colorscheme onedark
let g:lightline = {'colorscheme': 'onedark'}
