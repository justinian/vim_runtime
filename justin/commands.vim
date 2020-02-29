nmap <silent> ,n :set number!<CR>
nmap <silent> ,w :set wrap!<CR>
nmap <silent> ,W gqip
nmap <silent> ,/ :noh<CR>
nmap <silent> ,<TAB> :e#<CR>
nmap <silent> ,h :call Mosh_Flip_Ext()<CR>
nmap <silent> ,RR :e! %<CR>
nmap <silent> ,SS :%s/^\s\+$//g<CR>
nmap <silent> ,VM :call Stream_Mode()<CR>
nmap <silent> <F2> cwindow<CR>
nmap <silent> <F3> lwindow<CR>

" Plugin Commands
nmap <silent> ,e :BufExplorer<CR>
nmap <silent> ,g :GoImports<CR>

" Find Commands
nmap ,f :Lines 
nmap ,F :Rg 

" Add better regular expression replaces to search/replace
nmap ,s :%s/\v/g<LEFT><LEFT>
vmap ,s :s/\v/g<LEFT><LEFT>

" Lisp Commands
" =============
" re-indent entire top-level form
nmap <silent> ,= 99[(=% 

