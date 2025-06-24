local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function()
-- Packer itself
use 'wbthomason/packer.nvim'

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
                lualine_x = {'encoding', 'PencilMode', 'fileformat', 'filetype'},
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
                file_ignore_patterns = {
                },
            },
            pickers = {
                buffers = {
                    theme = "dropdown",
                    initial_mode = "normal",
                },
            },
        })
    end
}

use {
  'sudormrfbin/cheatsheet.nvim',

  requires = {
    {'nvim-telescope/telescope.nvim'},
    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  }
}

use {'ahmedkhalf/project.nvim',
    config = function()
        require("project_nvim").setup {}
        require('telescope').load_extension('projects')
    end
}

use {'nvim-tree/nvim-tree.lua',
    config = function()
        require('nvim-tree').setup {
            git = {
                enable = true,
            },
            modified = {
                enable = true,
            },
            renderer = {
                highlight_git = true,
                highlight_opened_files = "name",
                highlight_modified = "icon",
            },
            respect_buf_cwd = true,
            sync_root_with_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = true,
            },
        }
    end
}

-- Language / filetype plugins
use {'fatih/vim-go', run = ':GoUpdateBinaries', ft = 'go' }
use {'ziglang/zig.vim', ft = 'zig'}
use {'dag/vim-fish', ft = 'fish'}
use {'freitass/todo.txt-vim', ft = 'todo'}
use {'jsix-os/j6def.vim', ft = 'j6def' }
use {'jvirtanen/vim-hcl', ft = 'hcl' }
use 'dcharbon/vim-flatbuffers'
-- use 'vimwiki/vimwiki'

use {'preservim/vim-markdown',
    config = function()
        vim.g.vim_markdown_conceal = 1
        vim.g.vim_markdown_frontmatter = 1
        vim.g.vim_markdown_strikethrough = 1
        vim.g.vim_markdown_toc_autofit = 1
    end
}

use 'preservim/vim-pencil'
use 'bakpakin/janet.vim'

-- Language Server
--use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
--use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
--use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
--use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
--use 'L3MON4D3/LuaSnip' -- Snippets plugin

end)
