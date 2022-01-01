setlocal textwidth=65
setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2
setlocal expandtab
setlocal formatoptions=2tn
setlocal autoread
autocmd CursorHold,CursorHoldI <buffer> update

inoremap <silent><buffer> <C-CR> <Esc>:VimwikiReturn 1 5<CR>
