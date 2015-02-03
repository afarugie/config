set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.fzf
"set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
"Bundle "scrooloose/snipmate-snippets"
"Bundle 'scrooloose/nerdtree'
Bundle 'ap/vim-css-color'

call vundle#end()

filetype plugin indent on
syntax on

let mapleader=","
map <Leader>r :source $MYVIMRC<CR>
imap jj <ESC>:w<CR>
imap ii <ESC><CR>

"Open NerdTree automatically if no files specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Closes NerdTree when vim window closes
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"open NERDTree with ctrl + n
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :E<CR>

"Launch Configs
autocmd filetype ruby nmap <Leader>g :!ruby "%"<cr>
autocmd filetype python nmap <Leader>g :!python "%"<cr>
autocmd filetype js nmap <Leader>g :!node "%"<cr>
autocmd filetype elixir nmap <Leader>g :!elixir "%"<cr>
autocmd filetype html nmap <Leader>g :!firefox "%"<cr>
autocmd filetype java nmap <Leader>g :!javac "%" <cr>

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

