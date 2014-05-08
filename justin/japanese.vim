function! Toggle_Japanese()
	if exists("g:saved_gfn")
		let &g:gfn = g:saved_gfn
		unlet g:saved_gfn
		set imdisable
	else
		let g:saved_gfn=&gfn
		set gfn=MS_Gothic:h10:cANSI
		set noimdisable
	endif
	runtime justin/statusline.vim
endfunction

map <F7> :call Toggle_Japanese()<CR>
