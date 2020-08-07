" Don't try to be vi compatible
:set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

" Helps force plugins to load correctly when it is turned back on below
filetype off

" automatic vimplug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.gvimrc
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Plug 'alx741/vim-hindent'
Plug 'neovimhaskell/haskell-vim'
Plug 'ctrlpvim/ctrlp.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show hybrid line numbers
set number relativenumber
"
" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering

set ttyfast

" Change 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

