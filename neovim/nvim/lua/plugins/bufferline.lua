-- luacheck: globals vim
return {
    "akinsho/bufferline.nvim", -- bufferline
    dependencies = {
        "nvim-tree/nvim-web-devicons" -- icons
    },
    version = "*",
    priority = 0,
    opts = {
        options = {
            mode = "tabs",
            numbers = "ordinal",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "left"
                }
            }
        }
    }
}
