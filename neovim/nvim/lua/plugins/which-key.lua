-- luacheck: globals vim
return {
    "folke/which-key.nvim", -- which-key
    config = function()
        local setup, whick_key = pcall(require, "which-key")
        if not setup then return end

        vim.o.timeout = true
        vim.o.timeoutlen = 300

        whick_key.setup {
            plugins = {
                marks = true,
                registers = true,
                spelling = {enabled = true, suggestions = 20},
                presets = {
                    operators = true,
                    motions = true,
                    text_objects = true,
                    windows = true,
                    z = true,
                    g = true
                }
            },
            window = {
                border = "none",
                position = "bottom",
                margin = {1, 0, 1, 0},
                padding = {1, 2, 1, 2}
            },
            layout = {
                height = {min = 4, max = 20},
                width = {min = 20, max = 50},
                spacing = 3,
                align = "center"
            },
            ignore_missing = false,
            hidden = {
                "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "
            },
            show_help = true,
            triggers = "auto",
            triggers_blacklist = {i = {","}, n = {","}}
        }
    end
}
