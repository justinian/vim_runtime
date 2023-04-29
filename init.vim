"runtime justin/early.vim

lua require('plugins')
lua require('justin')

"color gruvbox
"let g:gruvbox_contrast_dark="hard"
"let g:neovide_cursor_animation_length=0.03
"set gfn=Cascadia\ Code:h11
"set bg=dark

"runtime justin/functions.vim
"runtime justin/behavior.vim
"runtime justin/folding.vim
"runtime justin/commands.vim
"runtime justin/snippets.vim

" DIFF OPTIONS
if &diff
    runtime justin/diff.vim
endif

"runtime justin/late.vim
