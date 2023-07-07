-- luacheck: globals vim
return {
    "utilyre/barbecue.nvim", -- vscode-like winbar
    version = '*',
    dependencies = {"SmiteshP/nvim-navic"},
    config = function()
        local setup, barbecue = pcall(require, 'barbecue')
        if not setup then return end

        barbecue.setup {theme = "catppuccin"}
    end
}
