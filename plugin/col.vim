if exists("loaded_col")
  finish
endif
let loaded_col = 1

function! Col(col)
  let &colorcolumn=str2nr(a:col)
  let &textwidth=str2nr(a:col)
endfunction

command -nargs=1 Col call Col(<args>)
