set nocompatible

filetype plugin indent on

execute pathogen#infect()

" auto reload the file when external modification fired
set autoread

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

set wildmenu			" Enhance command-line completion

set esckeys				" Allow cursor keys in insert mode

set backspace=indent,eol,start				" Allow backspace in insert mode

set ttyfast				" Optimize for fast terminal connections

set encoding=utf-8 nobomb			" Use UTF-8 without BOM

" Change mapleader
let mapleader="," 
let g:mapleader =","

" Don’t add empty newlines at the end of files
set binary
set noeol

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

set background=dark
colorscheme solarized

set modeline			" Respect modeline in files
set modelines=4

map <C-n> :NERDTreeToggle<CR>

set cursorline			" Highlight current line
set title				" Show the filename in the window titlebar

set ruler				" Show the cursor position

set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set tabstop=4 
set shiftwidth=4

set smarttab			" Use smart tab

set showcmd 			" Show the (partial) command as it’s being typed
set showmatch 

set number				" Enable line numbers

syntax on				" Enable syntax highlighting
"syntax enable			" ????

set hlsearch			" Highlight searches
set incsearch			" Highlight dynamically as pattern is typed
set ignorecase			" Ignore case of searches
set gdefault			" Add the g flag to search/replace by default

set laststatus=2		" Always show status line

set mouse=a				" Enable mouse in all modes

set smartcase 
set autoindent			" Auto indent

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

nmap <leader>w :w!<cr>				" quick save

nnoremap ' `

" clear search highlighting by pressing Esc key
nnoremap <esc> :noh<return><esc>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
   let save_cursor = getpos(".")
   let old_query = getreg('/')
   :%s/\s\+$//e
   call setpos('.', save_cursor)
   call setreg('/', old_query)
endfunction

noremap <leader>ss :call StripWhitespace ()<CR>
