if has('win32')
call plug#begin('~/vimfiles/plugged')
else
call plug#begin('~/.vim/plugged')
endif
Plug 'arcticicestudio/nord-vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ziglang/zig.vim'
Plug 'dag/vim-fish'
Plug 'vimwiki/vimwiki'
Plug 'freitass/todo.txt-vim'
call plug#end()

colorscheme nord

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
