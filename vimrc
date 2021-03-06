" Pathogen calls -- Plugin loading
call pathogen#infect()
call pathogen#helptags()

"""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""
set nocompatible                " Choose no compatibility with legacy vi
set laststatus=2                " Always show the statusline
set noshowmode                  " Don't show the mode ("-- INSERT --") at the bottom
syntax enable
syntax sync fromstart
set encoding=utf8
set fileencoding=utf8
set fileformat=unix             " File mode is unix
set fileformats=unix,dos,mac    " Detects unix, dos, mac file formats in that order
set termencoding=utf8
set showcmd                     " Display commands information
filetype plugin indent on       " Load file type plugins + indentation
set ai                          " Auto indent
set si                          " Smart indent
set wildmenu                    " Show matching filenames with tab key
set nobackup                    " no backup-files like bla~ 
set nowritebackup 
                                " Change swapfile directory
set directory=~/tmp/vim/,.,/var/tmp,/tmp
set hidden                      " Hide buffer instead of closing it
set tabpagemax=40               " Increade max number of tabs to 40
set iskeyword+=_,$,@,%,#        " None of these should be word dividers
set vb                          " Silence bell

""""""""""""""""""""""""""""""""""
" Set color on the line at pos 80
""""""""""""""""""""""""""""""""""
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
set switchbuf=usetab,newtab

" NERDTree
"map <Leader>m :NERDTreeMirrorToggle<CR>

" NERDTree(Tab)
"map <Leader>am <plug>NERDTreeTabsToggle<CR>
map <Leader>m <plug>NERDTreeTabsToggle<CR>

" indentLine
nnoremap <Leader>ig :IndentLinesToggle<CR>

" vim-colors-solarized
call togglebg#map("<F5>")

" Utilities
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>
nnoremap ; :
inoremap jj <ESC>
nnoremap <silent><leader>l :set rnu! rnu? <cr>

"""""""""""""""""""""""""""""
" => Visual-Look options
"""""""""""""""""""""""""""""
set background=dark
se t_Co=16
"let g:solarized_termcolors=16
"let g:solarized_contrast="high"
"colorscheme solarized
set number ruler
set cursorline
set antialias
"let g:Powerline_symbols='fancy'
"let g:Powerline_stl_path_style='short'

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
set showmatch                   " Show matching braces
if has('unnamedplus')           " Yanks go on clipboard, Need +clipboard
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
                                " Ignoring :
set wildignore+=*.o,*.obj       " Objects files
set wildignore+=*.swp           " Vim swapfile
set wildignore+=*.class         " Java compiled / temps
set wildignore+=*.pyc           " Python cached / temps

""""""""""""""""""""""""""""""""""
" Set NERDTree settings
""""""""""""""""""""""""""""""""""
let g:NERDTreeQuitOnOpen=1

""""""""""""""""""""""""""""""""""
" Set NERDCommenter settings
""""""""""""""""""""""""""""""""""
let g:NERDCustomDelimiters = {'python': {'left': '# ', 'leftAlt': '#'}}

""""""""""""""""""""""""""""""""""
" Set indentLine settings
""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'
