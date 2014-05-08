execute pathogen#infect()

runtime justin/functions.vim
runtime justin/behavior.vim
runtime justin/commands.vim
runtime justin/snippets.vim
runtime justin/japanese.vim
runtime justin/statusline.vim

" DIFF OPTIONS
if &diff
	runtime justin/diff.vim
endif

" GUI OPTIONS
if has("gui_running")
	runtime justin/gui.vim
else
	runtime justin/console.vim
endif

" File types
autocmd BufNewFile,BufRead *.boo setf boo
autocmd BufNewFile,BufRead *.proto setf proto
autocmd BufNewFile,BufRead *.voom Voom

