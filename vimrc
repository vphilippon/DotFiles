call pathogen#infect()
call pathogen#helptags()

"""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""
set nocompatible                " Choose no compatibility with legacy vi
set laststatus=2                " Always show the statusline
syntax enable
syntax sync fromstart
set encoding=utf8
set fileencoding=utf8
set termencoding=utf8
set showcmd                     " Display commands information
filetype plugin indent on       " Load file type plugins + indentation
set ai                          " Auto indent
set si                          " Smart indent
set wildmenu                    " Show matching filenames with tab key
set nobackup                    " no backup-files like bla~ 
set nowritebackup 
set hidden                      " Hide buffer instead of closing it

""""""""""""""""""""""""""""""""""
" Set color on the line at pos 80
""""""""""""""""""""""""""""""""""
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
autocmd VimResized * wincmd = "automaticly resizes the splits when canvas changes

"""""""""""""""""""""""""""""
" => Key Mapping
"""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","
" Navigation
map <F7> :tabp<CR>
map <F8> :tabn<CR>
nnoremap <F5> :sbprevious<CR>
nnoremap <F6> :sbnext<CR>
set switchbuf=usetab,newtab

" NERDTree(Tab)
map <Leader>m <plug>NERDTreeTabsToggle<CR>
map <Leader>n <plug>NERDTreeSteppedOpen<CR>
map <Leader>b <plug>NERDTreeSteppedClose<CR>

" Utilities
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>
nnoremap ; :

"""""""""""""""""""""""""""""
" => Appearance options
"""""""""""""""""""""""""""""
set background=dark
se t_Co=256
let g:solarized_termcolors=256
colorscheme solarized
set number ruler
set cursorline
set antialias
let g:Powerline_symbols = 'fancy'

"""""""""""""""""""""""""""""
" => Text, tabs and indent
"""""""""""""""""""""""""""""
set wrap                        " don't wrap lines
set linebreak
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set softtabstop=2
set backspace=indent,eol,start  " backspace through everything in insert mode
set smarttab
set expandtab
set virtualedit=block
set clipboard+=unnamed          " Yanks go on clipboard
set showmatch                   " Show matching braces

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set wildignore+=*.o,*.obj,.git,.svn,*.class,*.jasper,*.swp,target/*

""""""""""""""""""""""""""""""""""
" Set YouCompleteMe settings
""""""""""""""""""""""""""""""""""
set completeopt=menuone
let g:ycm_extra_conf_globlist = ['~/Projects/*'] " Set to your owns if needed.

