" " Clone Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" " Install Plugins
" vim +PluginInstall +qall
" Launch vim and run :PluginInstall

" vundle begin
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'git://git.vv9k.com/vim-github-dark.git'

call vundle#end()            " required
filetype plugin indent on    " required
" vundle end

syntax enable
set number
set noic
set laststatus=2
set background=dark
set t_Co=256
set tabstop=2
set shiftwidth=2
" colorscheme ghdark
