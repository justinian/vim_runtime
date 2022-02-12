function _G.increase_fontsize(delta)
    local font, size = string.match(vim.o.guifont, "([^:]+):h(%d+)")
    vim.o.guifont = font .. ":h" .. (size+delta)
end
