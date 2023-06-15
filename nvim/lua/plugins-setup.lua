local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') ..
                             '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git', 'clone', '--depth', '1',
            'https://github.com/wbthomason/packer.nvim', install_path
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then return end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use {"catppuccin/nvim", as = "catppuccin"}

    -- essential plugins
    use 'nvim-lua/plenary.nvim' -- useful nvim bindings/commands
    use 'nvim-tree/nvim-tree.lua' -- file explorer
    use {
        'nvim-treesitter/nvim-treesitter', -- syntax-highlight
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
            ts_update()
        end
    }
    use 'nvim-tree/nvim-web-devicons' -- icons
    use 'DaikyXendo/nvim-material-icon' -- icons
    use 'nvim-lualine/lualine.nvim' -- statusline
    use {'nvim-telescope/telescope.nvim', branch = '0.1.x'} -- fuzzy finding
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use 'lewis6991/gitsigns.nvim' -- git integration
    use {
        'folke/noice.nvim', -- interactive-ui
        requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    }
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'} -- tabs
    use 'folke/which-key.nvim' -- key binding helper
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    } -- bufferline
    use {"folke/trouble.nvim", requires = "nvim-tree/nvim-web-devicons"} -- better diagnostics

    -- useful plugins
    use 'tpope/vim-surround' -- replacement helper
    use 'numToStr/Comment.nvim' -- comment bindings
    use 'windwp/nvim-autopairs' -- autopair
    use 'akinsho/toggleterm.nvim' -- terminal toggle
    use 'tpope/vim-fugitive' -- git commands
    use 'b0o/schemastore.nvim' -- json schema
    use {
        'utilyre/barbecue.nvim',
        tag = '*',
        requires = { -- vscode-like winbar
            "SmiteshP/nvim-navic"
        }
    }
    use 'NvChad/nvim-colorizer.lua' -- colorizer
    use 'yamatsum/nvim-cursorline' -- cursor highlight
    use {'iamcco/markdown-preview.nvim', run = "cd app && npm install"} -- markdown preview

    -- autocompletion
    use 'hrsh7th/nvim-cmp' -- completion tool
    use 'hrsh7th/cmp-buffer' -- complete from buffer
    use 'hrsh7th/cmp-path' -- complete from path
    use 'hrsh7th/cmp-nvim-lsp' -- cmp lspconfig bindings

    -- snippets
    use 'L3MON4D3/LuaSnip' -- snippets engine
    use 'saadparwaiz1/cmp_luasnip' -- cmp luasnip bindings
    use 'rafamadriz/friendly-snippets' -- snippets

    -- LSP
    use 'williamboman/mason.nvim' -- tolling installation
    use 'williamboman/mason-lspconfig.nvim' -- lspconfig bindings
    use 'neovim/nvim-lspconfig' -- lspconfig
    use 'onsails/lspkind.nvim' -- lspconfig improvements
    use {'glepnir/lspsaga.nvim', branch = 'main'} -- lspconfig improvements

    -- formatting & linting
    use 'jose-elias-alvarez/null-ls.nvim' -- linters and formatters
    use 'jayp0521/mason-null-ls.nvim' -- mason null-ls bindings

    -- code completion
    use 'github/copilot.vim' -- github copilot

    -- language plugins
    use 'fatih/vim-go' -- golang
    use 'rust-lang/rust.vim' -- rust
    -- use 'mhanberg/elixir.nvim' --elixir

    -- tools
    use 'towolf/vim-helm' -- helm
    use 'mfussenegger/nvim-dap' -- debug adapter
    use 'rbong/vim-flog' -- git commit log
    use {
        'akinsho/git-conflict.nvim',
        tag = "*",
        config = function() -- git conflict
            require('git-conflict').setup()
        end
    }
    use {'hashivim/vim-terraform', ft = 'terraform'} -- terraform

    if packer_bootstrap then require('packer').sync() end
end)
