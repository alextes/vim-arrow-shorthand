" Convert JavaScript arrow functions to shorthand and back
" Maintainer: cryptogohan <cryptogohan@protonmail.com>
" License: MIT

if exists("g:loaded_arrow_shorthand") || &cp
  finish
endif
let g:loaded_arrow_shorthand = 1

function s:ToShorthand()
  echo "to shorthand!"
  exec "normal dw\<Plug>Dsurround{\<CR>f(%$x%"
endfunction

function s:FromShorthand()
  echo "from shorthand!"
  exec "normal \<Plug>YSurround%{jireturn\<ESC>"
endfunction

nnoremap <silent> <Plug>ToShorthand :call <SID>ToShorthand()<CR>
nnoremap <silent> <Plug>FromShorthand :call <SID>FromShorthand()<CR>

if !hasmapto('<Plug>ToShorthand;')
  nmap <leader>sht <Plug>ToShorthand
endif

if !hasmapto('<Plug>FromShorthand;')
  nmap <leader>shf <Plug>FromShorthand
endif
