" nmap <silent> ,id "=strftime("%c")<CR>P

let g:BASH_Ctrl_j = 'off'

imap <silent> <C-j>d <C-R>=strftime("%Y.%m.%d %A")<CR>
nmap <silent> <C-j>d i<C-j>d
iab xxd <C-j>d

imap <silent> <C-j>T ### _<C-R>=strftime("%I:%M %p")<CR>_<Space>
nmap <silent> <C-j>T i<C-j>t
iab xtt <C-j>T

imap <silent> <C-j>t _<C-R>=strftime("%I:%M %p")<CR>_ -
nmap <silent> <C-j>t i<C-j>t
iab xxt <C-j>t


