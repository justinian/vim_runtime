local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_url =  'https://github.com/wbthomason/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
end

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function()
-- Packer itself
use 'wbthomason/packer.nvim'

-- Theme plugins
-- use 'arcticicestudio/nord-vim'
-- use 'EdenEast/nightfox.nvim'
-- use 'rebelot/kanagawa.nvim'

-- Behavior / tool plugins
use 'ctrlpvim/ctrlp.vim'
use 'jlanzarotta/bufexplorer'
use 'junegunn/fzf'

-- Status Line
use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup({
            options = {
                icons_enabled = false,
                theme = 'wombat',
            },
            sections = {
                lualine_b = {{'branch', icons_enabled = true},},
            },
        })
    end,
}

-- Notes
use {'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },
        })
    end
}
use {'mickael-menu/zk-nvim',
    config = function()
        require('zk').setup({picker = "telescope"})
    end
}

-- Language / filetype plugins
use {'fatih/vim-go', run = ':GoUpdateBinaries', ft = 'go' }
use {'ziglang/zig.vim', ft = 'zig'}
use {'dag/vim-fish', ft = 'fish'}
use {'freitass/todo.txt-vim', ft = 'todo'}
use {'jsix-os/j6def.vim', ft = 'j6def' }
use 'vimwiki/vimwiki'

-- Misc
use 'neovim/nvim-lspconfig'
end)
