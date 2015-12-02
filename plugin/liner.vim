if exists("loaded_lined")
  finish
endif
let loaded_lined = 1

function! Line(col)
  let &colorcolumn=str2nr(a:col)
  let &textwidth=str2nr(a:col)
endfunction

command -nargs=1 Line call Line(<args>)
