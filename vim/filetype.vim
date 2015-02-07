if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.flex,*.jflex    set ft=jflex
  au! BufRead,BufNewFile *.jj,*.jcc        set filetype=javacc
  au! BufRead,BufNewFile *.cup             set filetype=cup
  au! BufRead,BufNewFile *.conf            set filetype=conf
augroup END
