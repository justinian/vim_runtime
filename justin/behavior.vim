source $VIMRUNTIME/mswin.vim
if mapcheck("<C-F>") != ""
    unmap <C-F>
endif

" turn off some of the stupid things :behave mswin does
set keymodel=""
set selectmode=""

" Use UTF-8 internally and by default and always create new files
" with " unix line endings: MAKE SURE ENCODING GETS SET FIRST! See:
" http://stackoverflow.com/questions/4449520
set encoding=utf-8
set fileformats=unix,dos

set title
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
set splitright
set splitbelow
set tags=tags;/
set mouse=a

syntax on
filetype on
filetype plugin on

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
filetype indent on

" if a buffer is already open in another window or tab,
" focus that win/tab instead of loading it again in the
" current window/tab
set switchbuf=useopen,usetab

" Set tab-page labels
set guitablabel=%t

" But don't auto-continue comments
set formatoptions=cql

" Save tempfiles to the temp folder, duh
if has('unix')
    set dir=/var/tmp//
else
    set dir=$TEMP
endif

" Don't prompt me to reload files that only changed RO
autocmd FileChangedRO * echohl WarningMsg | echo "File changed RO." | echohl None
autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None

" Browser behavior
let g:netrw_liststyle = 3

" Folding behavior
let g:sh_fold_enabled=7 "enable function, heredoc, and if/do/for sh folding
au FileType sh setlocal foldmethod=syntax
let g:is_bash=1 "default sh syntax is Bash

" File types
autocmd BufNewFile,BufRead *.proto setf proto

autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType js setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2

autocmd FileType markdown setlocal spell
autocmd FileType vimwiki setlocal spell

"
" Plugin Options
"

" vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/Sync/Notes/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

" Vim-go
let g:go_fmt_command = "goimports"
autocmd BufNewFile,BufRead *.go nmap ,b :GoBuild<CR>
autocmd BufNewFile,BufRead *.go nmap ,t :GoTest<CR>

set noshowmode

" CtrlP and wildcard ignores
if has("win32")
    set wildignore+=*.swp,*.zip,*.exe,*.dll,*\\.git\\*,*.obj
else
    set wildignore+=*.so,*.swp,*.zip,*.o
endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]external[\/].*[\/]doc|example|sysroot|build|node_modules',
  \ }
let g:ctrlp_root_markers = ['.notes_root', '.p4config', '.p4ignore', '.p4ignore.txt']

" Buffer Explorer: Sort by full file path name.
let g:bufExplorerSortBy='fullpath'

let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1

" Penicl: prefix inserts with _ to disable autoformat, eg _i
let g:pencil#map#suspend_af = '_'

" todo.txt
let g:todo_done_filename = 'done.txt

" my own functions
let g:worklog_dir = "/c/Users/justin/Dropbox/Notes/worklog/"
