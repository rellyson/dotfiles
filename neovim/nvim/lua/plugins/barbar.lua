-- luacheck: globals vim
return {
    "romgrk/barbar.nvim", -- tabs
    lazy = false,
    priority = 990,
    dependencies = {
        "nvim-tree/nvim-web-devicons" -- icons
    },
    config = function()
        local setup, barbar = pcall(require, "barbar")
        if not setup then return end

        vim.cmd([[ highlight BufferTabpageFill guibg=#120d17 ]])

        vim.g.barbar_auto_setup = false

        barbar.setup {
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
            }
        }
    end
}
