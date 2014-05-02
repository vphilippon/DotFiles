" Haskell setting - vphilippon

" Indentation
set autoindent
set smartindent
set tabstop=2 shiftwidth=2
set expandtab
set smarttab
set shiftround
set nojoinspaces

" Omnifunc and YCM setting
setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}
