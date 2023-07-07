require("lazy").setup({
    {"catppuccin/nvim", name = "catppuccin"}, -- colorscheme
    "nvim-lua/plenary.nvim", -- useful nvim bindings/commands
    "nvim-tree/nvim-tree.lua", -- file explorer
    {
        "nvim-treesitter/nvim-treesitter", -- syntax-highlight
        build = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
            ts_update()
        end
    }, "nvim-tree/nvim-web-devicons", -- icons
    "nvim-lualine/lualine.nvim", -- statusline
    {"nvim-telescope/telescope.nvim", version = "0.1.x"}, -- fuzzy finding
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    "lewis6991/gitsigns.nvim", -- git integration
    {
        "folke/noice.nvim", -- interactive-ui
        dependencies = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    }, {"romgrk/barbar.nvim", dependencies = "nvim-web-devicons"}, -- tabs
    "folke/which-key.nvim", -- key binding helper
    {
        "akinsho/bufferline.nvim", -- bufferline
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    }, {"folke/trouble.nvim", dependencies = "nvim-tree/nvim-web-devicons"}, -- better diagnostics
    "tpope/vim-surround", -- replacement helper
    "numToStr/Comment.nvim", -- comment bindings
    "windwp/nvim-autopairs", -- autopair
    "akinsho/toggleterm.nvim", -- terminal toggle
    "tpope/vim-fugitive", -- git commands
    "b0o/schemastore.nvim", -- schemastore config
    {
        "utilyre/barbecue.nvim", -- vscode-like winbar
        version = '*',
        dependencies = {"SmiteshP/nvim-navic"}
    }, "NvChad/nvim-colorizer.lua", -- colorizer
    "yamatsum/nvim-cursorline", -- cursor highlight
    "folke/todo-comments.nvim", -- highlight TODOs
    {"iamcco/markdown-preview.nvim", build = "cd app && npm install"}, -- markdown preview
    "hrsh7th/nvim-cmp", -- completion tool
    "hrsh7th/cmp-buffer", -- complete from buffer
    "hrsh7th/cmp-path", -- complete from path
    "hrsh7th/cmp-nvim-lsp", -- cmp lspconfig bindings
    "L3MON4D3/LuaSnip", -- snippets engine
    "saadparwaiz1/cmp_luasnip", -- cmp luasnip bindings
    "rafamadriz/friendly-snippets", -- snippets
    "neovim/nvim-lspconfig", -- lspconfig
    "williamboman/mason.nvim", -- tolling installation
    "williamboman/mason-lspconfig.nvim", -- lspconfig bindings
    "onsails/lspkind.nvim", -- lspconfig improvements
    "glepnir/lspsaga.nvim", -- lspconfig improvements
    "jose-elias-alvarez/null-ls.nvim", -- linters and formatters
    "jayp0521/mason-null-ls.nvim", -- mason null-ls bindings
    "github/copilot.vim", -- github copilot
    "fatih/vim-go", -- golang
    "rust-lang/rust.vim", -- rust
    "towolf/vim-helm", -- helm
    {
        "akinsho/git-conflict.nvim",
        version = "*",
        config = function() -- git conflict
            require('git-conflict').setup()
        end
    }, {"hashivim/vim-terraform", ft = "terraform"} -- terraform
}, {install = {missing = true}})
