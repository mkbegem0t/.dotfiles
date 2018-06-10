" Configuratio file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

source $VIMRUNTIME/macros/matchit.vim

set number
set shiftwidth=2
set tabstop=2
set autoindent
set hlsearch
set nowritebackup
set nobackup
set noswapfile
set modifiable
set write
set mouse=a
set cursorline
set display=lastline
set ttymouse=xterm2
set clipboard+=autoselect
set lazyredraw
set display=lastline
set showmatch
set matchtime=1
set splitright
set splitbelow
set smartindent
set autoindent
set noundofile
set hidden
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set clipboard=unnamedplus

let mapleader = "\<Space>"
let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_parent_error_close = 1

inoremap <silent> jj <ESC>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>h <C-w>h<CR>
nnoremap <Leader>l <C-w>l<CR>
nnoremap <Leader>j <C-w>j<CR>
nnoremap <Leader>k <C-w>k<CR>
nnoremap <Leader><Tab> <C-w>w 
nnoremap <Leader>t gt<CR>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
noremap <C-F><C-L> :VimFiler -split -simple -winwidth=30 -no-quit

syntax on
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
