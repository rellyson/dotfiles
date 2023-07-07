-- luacheck: globals vim
return {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga_status, saga = pcall(require, "lspsaga")
        if not saga_status then return end

        saga.setup {
            scroll_preview = {scroll_down = "<C-f>", scroll_up = "<C-b>"},
            definition = {edit = "<CR>"},
            ui = {colors = {normal_bg = "#022746"}},
            lightbulb = {
                enable = true,
                enable_in_insert = false,
                sign = true,
                sign_priority = 40,
                virtual_text = false
            }
        }
    end
}
