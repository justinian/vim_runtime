-- Some of this taken from https://github.com/preservim/vim-markdown/issues/232
--
local opts = { noremap=true, silent=false }
local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end

vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.formatoptions = "2tnc"
vim.opt_local.formatlistpat = [[\v^\s*\d+[.\)]\s+|^\s*[*+~-]\s+]]
--vim.opt_local.foldenable = false
vim.opt_local.foldlevel = 2
vim.opt_local.conceallevel = 2
vim.opt_local.comments = "n:>"

map("n", "<leader>mt", "<Cmd>Toc<CR>", opts)

vim.cmd [[
  highlight htmlItalic gui=italic cterm=italic
  autocmd FileType qf set nowrap
  autocmd CursorHold,CursorHoldI <buffer> update
]]
