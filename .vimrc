set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'scrooloose/nerdtree'
Bundle 'ap/vim-css-color'
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
Bundle 'https://github.com/tpope/vim-dispatch.git'
Bundle 'kchmck/vim-coffee-script'

call vundle#end()

filetype plugin indent on
syntax on

let mapleader=","
map <Leader>r :source $MYVIMRC<CR>
imap jj <ESC>:w<CR>
imap ii <ESC><CR>

map <C-n> :NERDTreeToggle<CR>

"Launch Configs
autocmd filetype ruby nmap <Leader>g :!ruby "%"<cr>
autocmd filetype python nmap <Leader>g :!python "%"<cr>
autocmd filetype js nmap <Leader>g :!node "%"<cr>
autocmd filetype coffee nmap <Leader>g :!coffee -c "%"<cr>
autocmd filetype elixir nmap <Leader>g :!elixir "%"<cr>
autocmd filetype html nmap <Leader>g :!open "%"<cr><cr>
autocmd filetype java nmap <Leader>g :!javac "%" && java "%:r"<cr>
autocmd filetype cpp  nmap <Leader>g :!g++ "%" -o "%:r" && ./"%:r"<cr>
autocmd filetype c nmap <Leader>g :!gcc "%" -o "%:r" && ./"%:r"<cr>

set ruler
set showmode
set number
set backspace=indent,eol,start "make spacespace work like normal 
set shiftwidth=2
set tabstop=2
set expandtab
set shiftround 
set incsearch
set ignorecase
set background=dark
set cursorcolumn
set cursorline
set colorcolumn=80
set clipboard=unnamed
