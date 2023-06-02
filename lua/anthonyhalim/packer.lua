-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 	
        'catppuccin/nvim', as = 'catppuccin', 
        'rebelot/kanagawa.nvim', as = 'kanagawa', 
    }

    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'} }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = false }
    }

    use 'folke/neodev.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim', 
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end},
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},           -- Required
            {'hrsh7th/cmp-nvim-lsp'},       -- Required
            {'L3MON4D3/LuaSnip'},           -- Required
            {'hrsh7th/cmp-path'},           -- Completion based on filesystem
            {'hrsh7th/cmp-nvim-lsp'},   
            {'hrsh7th/cmp-buffer'},         -- Completion based on current file
            {'saadparwaiz1/cmp_luasnip'},   -- For friendly snippets
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
