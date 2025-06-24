vim.opt.bg = "dark"
vim.cmd("color gruvbox")

-- Disable NetRW for NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "justin/functions"
require "justin/options"
require "justin/keybinds"

if vim.opt.diff:get() then
    require "justin/diff"
end

if vim.g.neovide then
    require "justin/neovide"
end
