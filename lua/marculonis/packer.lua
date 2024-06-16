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
        'folke/todo-comments.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        opts = {
        },
        config = function()
            require 'todo-comments'.setup {
            }
        end
    })

    use({
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox",
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })

    use('itchyny/lightline.vim')

    use(
        "nvim-treesitter/nvim-treesitter",
        {run = ':TSUpdate'}
    )

    use('nvim-treesitter/playground')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
    use('norcalli/nvim-colorizer.lua')
    use('sheerun/vim-polyglot')

    -- use('ixru/nvim-markdown')
    use{'preservim/vim-markdown',
        config = function()
            vim.g.vim_markdown_folding_disabled = 1
        end
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use('cohama/lexima.vim')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'hrsh7th/nvim-cmp'},
            {'L3MON4D3/LuaSnip'},
            {'saadparwaiz1/cmp_luasnip'},
            {'SirVer/ultisnips'},
            {'quangnguyen30192/cmp-nvim-ultisnips'},
            {'hrsh7th/vim-vsnip'},
            {'hrsh7th/cmp-vsnip'},
            -- {'honza/vim-snippets'},
        }
    }

    use {
      "ray-x/lsp_signature.nvim",
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
