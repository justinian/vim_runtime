" Status bar
"hi User1 guifg=#000000  guibg=#F4905C
"hi User2 guifg=#292b00  guibg=#f06040

set laststatus=2

set statusline=%-5n\ 
set statusline+=%#OrangeBar#	" change color
set statusline+=\ %F		"filename
set statusline+=\ %*	" normal color
set statusline+=\ %h	"help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P\   "percent through file
set statusline+=[en:%{strlen(&fenc)?&fenc:'none'}] "file encoding
set statusline+=[le:%{&ff}] "file format

