-- luacheck: globals vim
return {
    "NvChad/nvim-colorizer.lua", -- colorizer
    config = function() require("colorizer").setup() end
}
