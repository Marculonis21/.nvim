-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox",
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })

    -- use({
    --     "rose-pine/neovim",
    --     as = "rose-pine",
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- })

    use(
    "nvim-treesitter/nvim-treesitter",
    {run = ':TSUpdate'}
    )

    use('nvim-treesitter/playground')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
    -- use('itchyny/lightline.vim')
    use('norcalli/nvim-colorizer.lua')
    -- use('RRethy/vim-illuminate')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'SirVer/ultisnips'},
            {'honza/vim-snippets'},
        }
    }

    use{
        'alexghergh/nvim-tmux-navigation',
        config = function()
            require 'nvim-tmux-navigation'.setup {
                disable_when_zoomed = true, -- defaults to false
                keybindings = {
                    left = "<C-h>",
                    down = "<C-j>",
                    up = "<C-k>",
                    right = "<C-l>",
                    last_active = "<C-\\>",
                    next = "<C-Space>",
                }
            }
        end
    }
end)
