vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'

    use 'nvim-treesitter/nvim-treesitter'
--    use {
--        'akinsho/bufferline.nvim',
--        tag = "v3.*",
--        requires = 'kyazdani42/nvim-web-devicons'
--    }

    use 'nvim-treesitter/nvim-treesitter-context'

    use 'nvim-lua/popup.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'folke/lua-dev.nvim'

    use 'svermeulen/vimpeccable'

    use 'sbdchd/neoformat'

    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'ThePrimeagen/harpoon',
        requires = 'nvim-lua/plenary.nvim'
    }

    use 'akinsho/toggleterm.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'goolord/alpha-nvim'
    use 'ahmedkhalf/project.nvim'
    use 'numToStr/Comment.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'simrat39/rust-tools.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'

    use {
        'tanvirtin/vgit.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    use 'vim-airline/vim-airline'

    use 'sidebar-nvim/sidebar.nvim'
    use {
        'danymat/neogen',
        requires = 'nvim-treesitter/nvim-treesitter',
        tag = "*"
    }
end)

