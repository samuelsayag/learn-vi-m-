""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start section of the Vundle package manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'lifepillar/vim-solarized8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End section of the Vundle package manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" always display the status line
:set laststatus=2

" diplay line numbers
:set number

" set indentation to spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" activate the rainbow parentheses plugin
let g:rainbow_active = 1

" synstastic plugin setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" solarized theme
set background=dark
colorscheme solarized8

