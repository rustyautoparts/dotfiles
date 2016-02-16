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

"General plugins
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'

" Colorschemes
Plugin 'chriskempson/base16-vim'

" Syntax support
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-haml'
Plugin 'digitaltoad/vim-jade'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end() 	  "required
filetype plugin indent on "required

" Colorscheme settings
syntax on
set nu
set background=dark
let base16colorspace=256
colorscheme base16-bright


" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

" Tab settings
set ts=2 sts=2 sw=2 expandtab

"Python settings
autocmd filetype python set textwidth=79
autocmd filetype python set shiftwidth=4
autocmd filetype python set tabstop=4
autocmd filetype python set expandtab
autocmd filetype python set softtabstop=4
autocmd filetype python set shiftround
autocmd filetype python set autoindent
