set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim' " Ctrl+p

" All of your Plugins must be added before the following lind
call vundle#end()            " required
filetype plugin indent on    " required

" airline
let g:airline_theme='fruit_punch'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols_ascii = 1 
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#warning_symbol = 'W:'

" nerdtree
nmap <F1> :NERDTreeToggle<CR>

" python syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_quiet_messages = { "type": "style" }

" personal
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set autoindent
set expandtab
set showmatch
set clipboard=unnamed
let python_highlight_all=1
syntax on
" move among buffers with CTRL
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>
