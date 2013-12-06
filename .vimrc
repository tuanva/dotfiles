set nocompatible
execute pathogen#infect()

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","" 
" Don’t add empty newlines at the end of files
set binary
set noeol

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
syntax enable
set background=dark
colorscheme solarized
" Respect modeline in files
set modeline
set modelines=4
map <C-n> :NERDTreeToggle<CR>
" Highlight current line
set cursorline
" Show the filename in the window titlebar
set title
" Show the cursor position
set ruler

set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set tabstop=4 
set shiftwidth=4
" Use smart tab
set smarttab
" Show the (partial) command as it’s being typed
set showcmd 

set showmatch 
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight searches
set hlsearch
" Highlight dynamically as pattern is typed
set incsearch
" Ignore case of searches
set ignorecase
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
set smartcase 
set autoindent
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
nnoremap ' `

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
   let save_cursor = getpos(".")
   let old_query = getreg('/')
   :%s/\s\+$//e
   call setpos('.', save_cursor)
   call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

filetype plugin indent on
syntax on
