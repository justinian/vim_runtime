source $VIMRUNTIME/mswin.vim

" Use UTF-8 internally and by default and always create
" new files with unix line endings
" MAKE SURE ENCODING GETS SET FIRST! See:
" http://stackoverflow.com/questions/4449520/vim-opens-a-new-folder-instead-of-an-existing-file-with-set-enc-utf-8-enabled
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

syntax on
filetype on
filetype plugin on
set splitright
set splitbelow

" IndentatioN
set tabstop=4
set shiftwidth=4
set autoindent
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

