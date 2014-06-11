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
set tabpagemax=30               " Increade max number of tabs to 30
set iskeyword+=_,$,@,%,#        " None of these should be word dividers

" Not sure it's fixing, but I'll see over time...Thanks Valoric!
if v:version >= 704
  " The new Vim regex engine is currently slooooow as hell which makes syntax
  " highlighting slow, which introduces typing latency.
  " Consider removing this in the future when the new regex engine becomes
  " faster.
  set regexpengine=1
endif

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

" YouCompleteMe
nnoremap <leader>y :YcmForceCompileAndDiagnostics<CR>
noremap <leader>jd :YcmCompleter GoTo<CR>

" Utilities
set pastetoggle=<F2>
nmap <silent> ,é :nohlsearch<CR>
nnoremap ; :
inoremap jj <ESC> 

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
set showmatch                   " Show matching braces
if has('unnamedplus')           " Yanks go on clipboard, Thanks Valoric.
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set wildignore+=*.o,*.obj,.git,.svn,*.class,*.jasper,*.swp,target/*

""""""""""""""""""""""""""""""""""
" Set YouCompleteMe settings
""""""""""""""""""""""""""""""""""
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_extra_conf_globlist = ['~/Projects/*'] " Set to your owns if needed.

""""""""""""""""""""""""""""""""""
" Set vim-session settings
""""""""""""""""""""""""""""""""""
" you also need to run :SaveSession once to create the default.vim session that
" will then be autoloaded/saved from then on
let g:session_autoload        = 'yes'
let g:session_autosave        = 'yes'
let g:session_default_to_last = 'yes'
let g:session_directory       = '~/tmp/vim/sessions'

""""""""""""""""""""""""""""""""""
" New filetype : JFlex
""""""""""""""""""""""""""""""""""
augroup filetype
  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex
augroup END
