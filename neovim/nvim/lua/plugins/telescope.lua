-- luacheck: globals vim
return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.x",
    dependencies = {
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local telescope_setup, telescope = pcall(require, 'telescope')
        if not telescope_setup then return end

        telescope.setup()

        telescope.load_extension("fzf")
    end
}
