" C setting - vphilippon

" Indentation
set autoindent
set cindent
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab

" Commenting
let b:comment_leader = '// '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
