if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufNewFile,BufRead *.flex,*.jflex set ft=jflex
  au! BufRead,BufNewFile *.jj,*.jcc        set filetype=javacc
  au! BufRead,BufNewFile *.cup             set filetype=cup
augroup END
