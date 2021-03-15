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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
call plug#end()

" Adjust vim settings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
nnoremap <C-L> :nohl<CR><C-L>
nmap <M-Left> :bprev<CR>
nmap <M-Right> :bnext<CR>
map <F3> ggg?G
map Y y$
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
au FocusGained,BufEnter * :checktime
set autoread
set autochdir
set number
set linebreak
set mouse=a
set ignorecase
set smartcase
set lazyredraw
set list
set spell
set clipboard=unnamedplus
set foldlevel=99
set termguicolors
set background=dark
set backspace=indent,eol,start
set confirm
set completeopt=menu
let g:netrw_dirhistmax = 0
let g:gruvbox_italic=1
colorscheme gruvbox

" Use the same indentation settings regardless of file type and configure folding
setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 foldmethod=indent
autocmd FileType * setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 foldmethod=indent

" Reduce disk writes
set shada="NONE"
set viminfo="NONE"
set nobackup
set noswapfile
