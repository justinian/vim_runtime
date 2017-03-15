set t_Co=256
set t_ut=

if &term == 'win32'
	color darkrobot
else
	let g:gruvbox_contrast_dark="hard"
	color gruvbox
end

set bg=dark
