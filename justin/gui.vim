if v:servername == "vilog"
    set lines=30
    set columns=70
    set textwidth=65
    set formatoptions=2tn
    set autoread
    autocmd CursorHold,CursorHoldI * update
else
    set lines=50
    set columns=140
endif
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
