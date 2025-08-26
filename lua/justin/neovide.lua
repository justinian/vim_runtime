vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h11"
vim.g.neovide_scale_factor = 0.95

vim.g.neovide_text_gamma = 0.5
vim.g.neovide_text_contrast = 0.5

vim.g.neovide_opacity = 1.0
vim.g.neovide_normal_opacity = 0.95

vim.g.neovide_position_animation_length = 0.05
vim.g.neovide_scroll_animation_length = 0.15
vim.g.neovide_cursor_animation_length = 0.08

vim.g.neovide_hide_mouse_when_typing = true

vim.keymap.set('n', '<C-c>', '"+y')
vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('n', '<C-v>', '"+P')
vim.keymap.set('v', '<C-v>', '"+P')
vim.keymap.set('i', '<C-v>', '<C-o>"+P')
