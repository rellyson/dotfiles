-- luacheck: globals vim
return {
    'folke/noice.nvim', -- interactive-ui
    dependencies = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"},
    lazy = false,
    config = function()
        local setup, noice = pcall(require, 'noice')
        if not setup then return end

        noice.setup {
            messages = {view = "cmdline", view_warn = "cmdline"},
            presets = {long_message_to_split = true, command_palette = true},
            views = {
                cmdline_popup = {
                    border = {style = "none", padding = {1, 1}},
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder"
                    }
                },
                cmdline = {timeout = 3000}
            },
            lsp = {
                message = {
                    enabled = true,
                    view = "popup",
                    opts = {
                        focusable = false,
                        size = {height = "30%", max_width = "40%"}
                    }
                }
            }
        }
    end
}
