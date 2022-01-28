if has('gui_macvim')
	set gfn=Consolas:h12
else
    set gfn=Cascadia_Code:h11:cANSI
    set renderoptions=type:directx
endif

set go=!cegmrLt
"color nord
"color molokai_orangebar
"color eclipse
"color pyte
"color molokai
color gruvbox

" Todo.txt highlight support
hi! link TodoContext Function
hi! link TodoProject Function

if &diff
	set lines=90
	set columns=260
endif
