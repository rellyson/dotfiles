-- luacheck: globals vim
return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local setup, gitsigns = pcall(require, "gitsigns")
        if not setup then return end

        -- configure/enable gitsigns
        gitsigns.setup {
            signcolumn = true,
            attach_to_untracked = true,
            current_line_blame = true,
            current_line_blame_opts = {delay = 1000, ignore_whitespace = false}
        }
    end
}
