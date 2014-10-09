"""""""""""""""""""
" => Version check
"""""""""""""""""""
if v:version >= 704
  " Not sure it's fixing, but I'll see over time...Thanks Valoric!
  " The new Vim regex engine is currently slooooow as hell which makes syntax
  " highlighting slow, which introduces typing latency.
  " Consider removing this in the future when the new regex engine becomes
  " faster.
  set regexpengine=1
else
  " Disable YCM if we don't have Vim 7.4 or greater.
  let g:pathogen_disabled=['YouCompleteMe']
endif

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
set hidden                      " Hide buffer instead of closing it
set tabpagemax=40               " Increade max number of tabs to 40
set iskeyword+=_,$,@,%,#        " None of these should be word dividers

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
nnoremap <F5> :sbprevious<CR>
nnoremap <F6> :sbnext<CR>
set switchbuf=usetab,newtab

" NERDTree(Tab)
map <Leader>m <plug>NERDTreeTabsToggle<CR>
map <Leader>b <plug>NERDTreeSteppedClose<CR>

" YouCompleteMe
nnoremap <Leader>y :YcmForceCompileAndDiagnostics<CR>
noremap <Leader>jd :YcmCompleter GoTo<CR>

" taglist
map <Leader>n :TlistToggle<CR>

" indentLine
nnoremap <Leader>ig :IndentLinesToggle<CR>

" python-mode
nnoremap <Leader>u :PymodeLint<CR>

" Utilities
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>
nnoremap ; :
inoremap jj <ESC> 

"""""""""""""""""""""""""""""
" => Appearance options
"""""""""""""""""""""""""""""
set background=dark
se t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
set number ruler
set cursorline
set antialias
let g:Powerline_symbols='fancy'

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

set wildignore+=*.o,*.obj,.git,.svn,*.class,*.jasper,*.swp,*.pyc,target/*

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
" Set taglist settings
""""""""""""""""""""""""""""""""""
let g:Tlist_Close_On_Select=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_GainFocus_On_ToggleOpen=1

""""""""""""""""""""""""""""""""""
" Set python-mode settings
""""""""""""""""""""""""""""""""""
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_lint_cwindow = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_options_max_line_length = 100  " Job setting
let g:pymode_lint_ignore = "E128,E231,E265,E261,W391,W293" " Job setting

""""""""""""""""""""""""""""""""""
" Set indentLine settings
""""""""""""""""""""""""""""""""""
let g:indentLine_char = '┊'

""""""""""""""""""""""""""""""""""
" Set UltiSnips settings
""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

