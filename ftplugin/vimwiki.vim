set textwidth=65
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set formatoptions=2tn
set autoread
autocmd CursorHold,CursorHoldI * update

inoremap <silent><buffer> <C-CR> <Esc>:VimwikiReturn 1 5<CR>
