if has('unix')
	if system('uname -a') =~ 'icrosoft'
        if !has('nvim')
            set ttymouse=sgr
        endif
	endif
endif
