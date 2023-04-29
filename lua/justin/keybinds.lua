function map(mode, keys, command)
    vim.api.nvim_set_keymap(mode, keys, command, {noremap = true, silent = true})
end

function mapl(keys, command)
    vim.api.nvim_set_keymap('n', '<leader>' .. keys, command, {noremap = true, silent = true})
end

vim.g.mapleader = ','

mapl('n', '<cmd>set number!<CR>')
mapl('w', '<cmd>set wrap!<CR>')
mapl('W', 'gqip')
mapl('/', '<cmd>noh<CR>')
mapl('SS', '<cmd>%s/^\\s\\+$//g')

mapl('<TAB>', '<cmd>e#<CR>')
mapl('RR', '<cmd>e! %<CR>')

-- Plugin keybinds
-- nvim-tree
mapl('T', '<cmd>NvimTreeToggle<CR>')
mapl('t', '<cmd>NvimTreeFocus<CR>')

-- telescope
mapl('e', '<cmd>Telescope buffers<CR>')
mapl('p', '<cmd>Telescope find_files hidden=true<CR>')

map('n', '<C-P>', '<cmd>Telescope find_files<CR>')
