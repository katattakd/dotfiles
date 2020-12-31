" If vim-plug isn't already installed, install it.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" If plugins aren't installed, install them.
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | source $MYVIMRC
\| endif

" Configure plugins before loading vim-plug
let g:polyglot_disabled = ['autoindent']
let g:lightline = {'colorscheme': 'onedark'}

" Setup plugins through vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Adjust vim settings
set number
set linebreak
set mouse=a
set smartcase
set lazyredraw
set list
set spell
set clipboard+=unnamedplus
let g:netrw_dirhistmax = 0
autocmd FileType * setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8
colorscheme onedark
