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
                                " Change swapfile directory
set directory=~/tmp/vim/,.,/var/tmp,/tmp
"set hidden                      " Hide buffer instead of closing it
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
set switchbuf=usetab,newtab

" NERDTree(Tab)
map <Leader>m <plug>NERDTreeTabsToggle<CR>

" vim-session
nnoremap <Leader>o :OpenSession<CR>

" YouCompleteMe
nnoremap <Leader>y :YcmForceCompileAndDiagnostics<CR>
noremap <Leader>jd :YcmCompleter GoTo<CR>

" taglist
map <Leader>n :TlistToggle<CR>

" indentLine
nnoremap <Leader>ig :IndentLinesToggle<CR>

" python-mode
nnoremap <Leader>u :PymodeLint<CR>

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
let g:solarized_termcolors=16
let g:solarized_contrast="high"
colorscheme solarized
set number ruler
set cursorline
set antialias
let g:Powerline_symbols='fancy'
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
set wildignore+=.git,.svn       " Source control config
set wildignore+=*.swp           " Vim swapfile
set wildignore+=*.class,        " Java compiled / temps
set wildignore+=*.pyc           " Python cached / temps

""""""""""""""""""""""""""""""""""
" Set YouCompleteMe settings
""""""""""""""""""""""""""""""""""
let g:ycm_complete_in_comments = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_extra_conf_globlist = ['~/Projects/*', '~/projects/*'] " Set to your owns if needed.

""""""""""""""""""""""""""""""""""
" Set vim-session settings
""""""""""""""""""""""""""""""""""
" you also need to run :SaveSession once to create the default.vim session that
" will then be autoloaded/saved from then on
let g:session_autoload        = 'yes'
let g:session_autosave        = 'yes'
let g:session_default_to_last = 1
let g:session_directory       = '~/tmp/vim/sessions'

""""""""""""""""""""""""""""""""""
" Set taglist settings
""""""""""""""""""""""""""""""""""
let g:Tlist_Close_On_Select=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_GainFocus_On_ToggleOpen=1

""""""""""""""""""""""""""""""""""
" Set NERDCommenter settings
""""""""""""""""""""""""""""""""""
let g:NERDCustomDelimiters = {'python': {'left': '# ', 'leftAlt': '#'}}

""""""""""""""""""""""""""""""""""
" Set python-mode settings
""""""""""""""""""""""""""""""""""
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_cwindow = 1
let g:pymode_trim_whitespaces = 0
let g:pymode_options_max_line_length = 100  " Job setting
let g:pymode_lint_ignore = "W391" " Job setting
" W391 : Blank line at end of file

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

