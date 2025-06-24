vim.opt.wrap = false

local map = require("mappings")
map.set('n', '<C-[>', ':qa<CR>')
map.set('n', '[c', '[czz')
map.set('n', ']c', ']czz')
map.set('n', '<F7>', '[czz')
map.set('n', '<F8>', ']czz')
