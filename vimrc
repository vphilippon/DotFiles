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
set showcmd                     " Display commands information
filetype plugin indent on       " Load file type plugins + indentation
set ai                          " Auto indent
set si                          " Smart indent
set wildmenu                    " Show matching filenames with tab key
set nobackup                    " no backup-files like bla~ 
set nowritebackup 

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
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set switchbuf=usetab,newtab
nnoremap <F5> :sbprevious<CR>
nnoremap <F6> :sbnext<CR>

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
let g:ycm_extra_conf_globlist = ['~/Projects/*']


" Let zen coding use tabs
let g:user_zen_settings = { 'html' : { 'indentation' : '  ' }, }
