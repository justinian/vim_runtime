nmap <silent> <leader>n :set number!<CR>
nmap <silent> <leader>w :set wrap!<CR>
nmap <silent> <leader>W gqip
nmap <silent> <leader>/ :noh<CR>
nmap <silent> <leader><TAB> :e#<CR>
nmap <silent> <leader>h :call Mosh_Flip_Ext()<CR>
nmap <silent> <leader>RR :e! %<CR>
nmap <silent> <leader>SS :%s/^\s\+$//g<CR>
nmap <silent> <leader>VM :call Stream_Mode()<CR>
nmap <silent> <F2> cwindow<CR>
nmap <silent> <F3> lwindow<CR>

" Plugin Commands
nmap <silent> <leader>e :ToggleBufExplorer<CR>
nmap <silent> <leader>t :CtrlPTag<CR>
nmap <silent> <leader>b :CtrlPBuffer<CR>
nmap <silent> <leader>g :GoImports<CR>

" Find Commands
nmap <leader>f :Lines
nmap <leader>F :Rg

" Lisp Commands
" =============
" re-indent entire top-level form
nmap <silent> <leader>= 99[(=%

