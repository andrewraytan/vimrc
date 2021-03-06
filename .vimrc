call plug#begin()
" Related Rust Packages
Plug 'rust-lang/rust.vim'

" Syntastic for syntax checking
Plug 'scrooloose/syntastic'

" Side to display tags and file outline
Plug 'majutsushi/tagbar'

call plug#end()
syntax enable
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start

set number
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set splitright

set nobackup        " do not keep a backup file, use versions instead
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch       " do incremental searching


set mouse+=a
set ttimeoutlen=10

nmap j gj
nmap k gk

set hlsearch
set t_Co=256
colorscheme ron

" easy switching between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" navigating files and tabs
nnoremap gr gT
nnoremap K 10k
nnoremap Z J
nnoremap J 10j
" auto-braces for functions
inoremap {<CR> {<CR>}<ESC>O


" Terminal escape map
tnoremap <esc><esc> <C-\><C-n>

" netrw stuff
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv=1
let g:netrw_winsize = 17
"augroup ProjectDrawer
    "autocmd!
    "autocmd VimEnter * :Texplore
    "autocmd VimEnter * :tabm -1
    "autocmd VimEnter * :tab ter
    "autocmd VimEnter * :tabm -1
    "autocmd VimEnter * :tabn
    "autocmd VimEnter * :tabn
"augroup END

" Tagbar stuff
nmap <F8> :TagbarToggle<CR>

" Syntastic stuff
" location-list is list of errors
" shortcut for SyntasticCheck
nmap <F9> :SyntasticCheck<CR>
" sets SyntasticCheck to passive
let g:syntastic_mode_map = {"mode": "passive"}
" make location-list auto open and close
let g:syntastic_auto_loc_list = 1
" auto fill location-list with errors found
let g:syntastic_always_populate_loc_list = 1
