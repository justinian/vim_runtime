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

" Open curent month's worklog
nmap <silent> <leader>ll :call execute("edit " . Worklog())<CR>G

nmap <F7> :call v:lua.increase_fontsize(-1)<CR>
nmap <F8> :call v:lua.increase_fontsize(1)<CR>

" ZK notes commands
nnoremap <silent> <leader>zn <Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>
nnoremap <silent> <leader>zz <Cmd>ZkNotes { sort = { 'modified' } }<CR>
nnoremap <silent> <leader>zt <Cmd>ZkTags<CR>
nnoremap <silent> <leader>zf <Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>
vnoremap <silent> <leader>zf :'<,'>ZkMatch<CR>
command CdNotes :cd ~/notes

" Lisp Commands
" =============
" re-indent entire top-level form
nmap <silent> <leader>= 99[(=%

