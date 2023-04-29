vim.opt.encoding = "utf-8"
vim.opt.fileformats = "unix,dos"

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

vim.opt.title = true
vim.opt.number = true
vim.opt.modeline = true
vim.opt.visualbell = true
vim.opt.termguicolors = true

TS = 4
vim.opt.tabstop = TS
vim.opt.softtabstop = TS
vim.opt.shiftwidth = TS
vim.opt.autoindent = true
vim.opt.expandtab = true

vim.opt.autochdir = true
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.formatoptions = "cql"
vim.opt.backspace = "indent,eol,start"
vim.opt.mouse = "a"

vim.opt.tags = "tags;/"

vim.cmd([[
    syntax on
    filetype on
    filetype plugin on
    filetype indent on
]])

if vim.fn.has("unix") then
    vim.opt.dir = "/var/tmp//"
else
    vim.opt.dir = os.getenv("TEMP")
end
