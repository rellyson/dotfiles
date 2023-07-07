-- luacheck: globals vim
return {
    "nvim-lualine/lualine.nvim", -- statusline
    dependencies = {"folke/noice.nvim"},
    build = function()
        local setup, lualine = pcall(require, 'lualine')
        if not setup then return end

        local ok, noice = pcall(require, 'noice')
        if not ok then return end

        lualine.setup {
            options = {
                icons_enable = true,
                theme = 'catppuccin',
                sections = {
                    lualine_x = {
                        {
                            noice.api.status.message.get_hl,
                            cond = noice.api.status.message.has
                        }, {
                            noice.api.status.command.get,
                            cond = noice.api.status.command.has,
                            color = {fg = "#ff9e64"}
                        }, {
                            noice.api.status.mode.get,
                            cond = noice.api.status.mode.has,
                            color = {fg = "#ff9e64"}
                        }, {
                            noice.api.status.search.get,
                            cond = noice.api.status.search.has,
                            color = {fg = "#ff9e64"}
                        }
                    }
                }
            },
            extensions = {'nvim-tree', 'fzf', 'fugitive', 'toggleterm'}
        }
    end
}
