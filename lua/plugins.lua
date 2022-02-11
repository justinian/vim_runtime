local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
-- Packer itself
use 'wbthomason/packer.nvim'

-- Theme plugins
use 'arcticicestudio/nord-vim'
use 'EdenEast/nightfox.nvim'
use 'rebelot/kanagawa.nvim'

-- Behavior / tool plugins
use 'ctrlpvim/ctrlp.vim'
use 'jlanzarotta/bufexplorer'
use 'itchyny/lightline.vim'
use 'junegunn/fzf'

-- Language / filetype plugins
use {'fatih/vim-go', run = ':GoUpdateBinaries' }
use 'ziglang/zig.vim'
use 'dag/vim-fish'
use 'vimwiki/vimwiki'
use 'freitass/todo.txt-vim'

-- Misc
use 'neovim/nvim-lspconfig'
end)
