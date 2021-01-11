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
let g:lightline = {'colorscheme': 'gruvbox'}

" Setup plugins through vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Adjust vim settings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
set number
set linebreak
set mouse=a
set ignorecase
set smartcase
set lazyredraw
set list
set spell
set clipboard+=unnamedplus
set foldlevel=99
set foldcolumn=1
set termguicolors
set background=dark
setlocal foldmethod=indent
let g:netrw_dirhistmax = 0
let g:gruvbox_italic=1
colorscheme gruvbox

" Use the same indentation settings regardless of file type
setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8
autocmd FileType * setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8
