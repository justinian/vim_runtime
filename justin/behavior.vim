source $VIMRUNTIME/mswin.vim
if mapcheck("<C-F>") != ""
    unmap <C-F>
endif

" Use UTF-8 internally and by default and always create new files
" with " unix line endings: MAKE SURE ENCODING GETS SET FIRST! See:
" http://stackoverflow.com/questions/4449520
set encoding=utf-8
set fileformats=unix,dos

set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set wildmenu
set wildmode=longest:full,full
set autochdir
set hidden
set number
set modeline
set visualbell

set backspace=indent,eol,start

" if a buffer is already open in another window or tab,
" focus that win/tab instead of loading it again in the
" current window/tab
set switchbuf=useopen,usetab

" Set tab-page labels
set guitablabel=%t

" turn off some of the stupid things :behave mswin does
set keymodel=""
set selectmode=""

set cm=blowfish

" Buffer Explorer: Sort by full file path name.
let g:bufExplorerSortBy='fullpath'

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" MacVim what you doin
let macvim_skip_colorscheme = 1

" CtrlP and wildcard ignores
if has("win32")
    set wildignore+=*.swp,*.zip,*.exe,*.dll,*\\.git\\*,*\\build\\*,*.obj
else
    set wildignore+=*.so,*.swp,*.zip,*/build/*,*.o
endif
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]external[\/].*[\/]doc|example',
  \ }

syntax on
filetype on
filetype plugin on
set splitright
set splitbelow

" IndentatioN
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noexpandtab
filetype indent on

" IME Options
set imdisable

" But don't auto-continue comments
set formatoptions=cql

" Browser behavior
let g:netrw_liststyle = 3
"The below is for opening tabs.
"let g:netrw_browse_split = 3

let g:is_bash=1 "default sh syntax is Bash
let g:sh_fold_enabled=7 "enable function, heredoc, and if/do/for sh folding
au FileType sh setlocal foldmethod=syntax

autocmd BufNewFile,BufRead *.py setlocal expandtab tabstop=4 shiftwidth=4

" Vim-go
let g:go_fmt_command = "goimports"
autocmd BufNewFile,BufRead *.go nmap ,b :GoBuild<CR>
autocmd BufNewFile,BufRead *.go nmap ,t :GoTest<CR>

set tags=tags;/

" Save tempfiles to the temp folder, duh
if has('unix')
    set dir=/var/tmp//
else
    set dir=$TEMP
endif

" Don't prompt me to reload files that only changed RO
autocmd FileChangedRO * echohl WarningMsg | echo "File changed RO." | echohl None
autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None

let g:lightline = {
    \ 'colorscheme': 'molokai',
    \ }
set noshowmode
