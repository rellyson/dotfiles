-- luacheck: globals vim
return {
    "akinsho/bufferline.nvim", -- bufferline
    version = "*",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    priority = 10,
    config = function()
        local setup, bufferline = pcall(require, 'bufferline')
        if not setup then return end

        bufferline.setup {
            options = {
                mode = "tabs",
                numbers = "ordinal",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left"
                    }
                },
                highlights = require("catppuccin.groups.integrations.bufferline").get()
            }
        }
    end
}
