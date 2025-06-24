local map = {}

function map.set(mode, keys, command)
    vim.api.nvim_set_keymap(mode, keys, command, {noremap = true, silent = true})
end

function map.leader(keys, command)
    vim.api.nvim_set_keymap('n', '<leader>' .. keys, command, {noremap = true, silent = true})
end

return map
