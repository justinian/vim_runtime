runtime justin/early.vim
lua require('plugins')

"colorscheme nord

" GUI OPTIONS
if has("gui_running")
    runtime justin/gui.vim
elseif has("nvim")
    runtime justin/nvim.vim
    runtime justin/lsp.vim
else
    runtime justin/console.vim
endif

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

runtime justin/wsl.vim
runtime justin/late.vim
