call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

runtime justin/functions.vim
runtime justin/behavior.vim
runtime justin/folding.vim
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

runtime justin/wsl.vim
