function! Worklog()
    return g:worklog_dir . strftime("%Y.%m") . ".md"
endfun

function! Mosh_Flip_Ext()
  " Switch editing between .c* and .h* files (and more).
  " Since .h file can be in a different dir, call find.
  if match(expand("%"),'\.c') > 0
    let s:flipname = substitute(expand("%"),'\.c\(.*\)','.h',"")
    exe ":find " s:flipname
  elseif match(expand("%"),"\\.h") > 0
    let s:flipname = substitute(expand("%"),'\.h\(.*\)','.cpp',"")
    exe ":e " s:flipname
  endif
endfun
