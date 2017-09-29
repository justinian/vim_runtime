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
"nmap <silent> ,E :Explore<CR>
nmap <silent> ,E :NERDTreeToggle<CR>
nmap <silent> ,g :GoImports<CR>

nmap \tt :TlistOpen<CR>
nmap \tu :TlistUpdate<CR>
nmap \tc :TlistClose<CR>
nmap \tp :TlistShowPrototype<CR>

" Tab page commands
" nnoremap ,t :tab e 
" nnoremap <silent> <C-TAB> gt
" nnoremap <silent> <C-S-TAB> gT
" nnoremap <silent> <C-T> :tabnew<CR>
" command! -nargs=+ Te :noautocmd :silent execute "tab e " . expand("<args>")

" Find Commands
nmap ,f :LAg!
nmap ,F :LAg! ..<LEFT><LEFT><LEFT>

" Add better regular expression replaces to search/replace
nmap ,s :%s/\v/g<LEFT><LEFT>
vmap ,s :s/\v/g<LEFT><LEFT>

" Lisp Commands
" =============
" re-indent entire top-level form
nmap <silent> ,= 99[(=% 

