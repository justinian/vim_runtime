if has('unix')
	if system('uname -a') =~ 'Microsoft'
		set ttymouse=sgr
	endif
endif
