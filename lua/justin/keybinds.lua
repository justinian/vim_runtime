local map = require("mappings")

vim.g.mapleader = ','

map.leader('n', '<cmd>set number!<CR>')
map.leader('w', '<cmd>set wrap!<CR>')
map.leader('W', 'gqip')
map.leader('/', '<cmd>noh<CR>')
map.leader('SS', '<cmd>%s/^\\s\\+$//g<CR>')

map.leader('<TAB>', '<cmd>e#<CR>')
map.leader('RR', '<cmd>e! %<CR>')

-- Plugin keybinds
-- nvim-tree
map.leader('T', '<cmd>NvimTreeToggle<CR>')
map.leader('t', '<cmd>NvimTreeFocus<CR>')

-- telescope
map.leader('e', '<cmd>Telescope buffers<CR>')
map.leader('p', '<cmd>Telescope find_files hidden=true<CR>')
map.leader('f', '<cmd>Telescope grep_string<CR>')

map.set('n', '<C-P>', '<cmd>Telescope find_files<CR>')
