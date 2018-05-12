#!/bin/bash

mkdir -p .vim/pack/deoplete/start
mkdir -p .vim/pack/emmet-vim/start
mkdir -p .vim/pack/html5/start
mkdir -p .vim/pack/php/start
mkdir -p .vim/pack/scss-syntax/start
mkdir -p .vim/pack/t-comment/start
mkdir -p .vim/pack/unite/start
mkdir -p .vim/pack/vim-css3-syntax/start
mkdir -p .vim/pack/vim-javascript-syntax/start
mkdir -p .vim/pack/vimfilter/start

git clone https://github.com/Shougo/deoplete.nvim.git ./.vim/pack/deoplete/start/deoplete.nvim
git clone https://github.com/mattn/emmet-vim.git ./.vim/pack/emmet-vim/start/emmet-vim
git clone https://github.com/othree/html5.vim.git ./.vim/pack/html5/start/html5.vim
git clone https://github.com/StanAngeloff/php.vim.git ./.vim/pack/php/start/php.vim
git clone https://github.com/cakebaker/scss-syntax.vim.git ./.vim/pack/scss-syntax/start/scss-syntax.vim
git clone https://github.com/tomtom/tcomment_vim.git ./.vim/pack/t-comment/start/tcomment_vim
git clone https://github.com/Shougo/unite.vim.git ./.vim/pack/unite/start/unite.vim
git clone https://github.com/hail2u/vim-css3-syntax.git ./.vim/pack/vim-css3-syntax/start/vim-css3-syntax
git clone https://github.com/jelera/vim-javascript-syntax.git ./.vim/pack/vim-javascript-syntax/start/vim-javascript-syntax
git clone https://github.com/Shougo/vimfiler.vim.git ./.vim/pack/vimfilter/start/vimfilter.vim

ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.vim ~/.vim
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/.dir_colors ~/.dir_colors
