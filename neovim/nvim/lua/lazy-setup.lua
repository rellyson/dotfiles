require("lazy").setup({
    {"tpope/vim-fugitive", lazy = true}, -- git commands
    {import = "plugins"}, {import = "plugins.lsp"}
})
