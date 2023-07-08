-- luacheck: globals vim
return {
    "romgrk/barbar.nvim", -- tabs
    lazy = false,
    priority = 10,
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- icons
        "lewis6991/gitsigns.nvim" -- git status
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = false,
        auto_hide = true,
        clickable = true,
        sidebar_filetypes = {NvimTree = true},
        icons = {
            gitsigns = {
                added = {enabled = true, icon = '+'},
                changed = {enabled = true, icon = '~'},
                deleted = {enabled = true, icon = '-'}
            },
            filetype = {enabled = true}
        },
        no_name_title = nil
    }
}
