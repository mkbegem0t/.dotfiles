" Configuratio file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"2015.12.25 Add by K.Motosue
set number
set shiftwidth=2
set tabstop=2
set autoindent
"set showmatch
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
syntax on
"set t_Co=256
"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
let s:use_dein = 1
let g:neocomplete#enable_at_startup= 1
let g:vimfiler_as_default_explorer = 1
let loaded_matchparen = 1
let mapleader = "\<Space>"
noremap <C-F><C-L> :VimFiler -split -simple -winwidth=30 -no-quit
"autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit

" ----------------------------------
" denn.vim Plugins
" ----------------------------------
if &compatible
	set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

"call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')
call dein#add('othree/html5.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('jelera/vim-javascript-syntax')
call dein#add('mattn/emmet-vim')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-fugitive')
"call dein#add('tomasr/molokai')

call dein#end()

filetype plugin indent on
"colorscheme molokai
hi Comment ctermfg=102

" ----------------------------------
" 綴じタグ補完
" ----------------------------------
augroup MyXML
	autocmd!
	autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

"検索語が画面の真ん中に来るようにする
nmap n nzz 
nmap N Nzz 
nmap * *zz 
nmap # #zz 
nmap g* g*zz 
nmap g# g#zz

" jj でインサートモードから抜ける
inoremap <silent> jj <ESC>

" 全角スペースの可視化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

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
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1

" Space + y, Space + p でシステムのクリップボードにコピー＆ペーストする
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
