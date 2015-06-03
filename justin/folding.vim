" Folding
set foldlevelstart=99
set foldmethod=manual
set foldopen="hor,mark,percent,quickfix,search,tag,undo"
au FileType xml setlocal foldmethod=syntax
au FileType cpp setlocal foldmethod=syntax
au FileType c setlocal foldmethod=syntax

au FileType php setlocal foldmethod=indent
au FileType php setlocal foldlevelstart=1

nnoremap <silent> zj :call NextClosedFold('j')<cr>
nnoremap <silent> zk :call NextClosedFold('k')<cr>
function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction
