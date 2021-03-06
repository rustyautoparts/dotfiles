" Vundle Settings
set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin(~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end() 	  "required
filetype plugin indent on "required

" Colorscheme settings
syntax on
set nu
let base16colorspace=256
set background=dark
colorscheme base16-eighties

" Tab settings
set ts=2 sts=2 sw=2 expandtab
