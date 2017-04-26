set lines=70
set columns=140
if has('gui_macvim')
	set gfn=Consolas:h12
else
	set gfn=Consolas:h11:cANSI
endif
set go=egmrLt
color molokai_orangebar
"color eclipse
"color pyte
"color molokai

if &diff
	set lines=90
	set columns=260
endif
