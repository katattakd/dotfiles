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
Plug 'vim-scripts/AutoComplPop'
Plug 'preservim/nerdtree'
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
map Y y$
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
			\ quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufWinEnter * silent NERDTreeMirror
filetype plugin on
set omnifunc=syntaxcomplete#Complete
au FocusGained,BufEnter * :checktime
set autoread
set autochdir
set number
set linebreak
set mouse=a
set ignorecase
set smartcase
set lazyredraw
set isfname-==
set list
set spell
set clipboard=unnamedplus
set foldlevel=99
set termguicolors
set background=dark
set backspace=indent,eol,start
set confirm
set completeopt=longest,menuone
set wildmenu
set wildmode=longest,list,full
let g:netrw_dirhistmax = 0
let g:gruvbox_italic=1
let NERDTreeCaseSensitiveSort=0
let NERDTreeNaturalSort=1
let NERDTreeSortHiddenFirst=1
let NERDTreeHijackNetrw=1
let NERDTreeShowHidden=1
let NERDTreeCascadeSingleChildDir=1
let NERDTreeCascadeOpenSingleChildDir=1
colorscheme gruvbox

" Use the same indentation settings regardless of file type and configure folding
setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 foldmethod=indent
autocmd FileType * setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 foldmethod=indent

" Reduce disk writes
set shada="NONE"
set viminfo="NONE"
set nobackup
set noswapfile
