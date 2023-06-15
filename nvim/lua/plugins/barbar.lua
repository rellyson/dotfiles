local setup, barbar = pcall(require, "barbar")
if not setup then return end

vim.cmd([[ highlight BufferTabpageFill guibg=#120d17 ]])

vim.g.barbar_auto_setup = false

barbar.setup {
    animation = true,
    auto_hide = true,
    clickable = true,
    sidebar_filetypes = {NvimTree = true},
    icons = {
        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'}
        },
        filetype = {enable = true}
    }
}
