-- luacheck: globals vim
return {
    {
        "numToStr/Comment.nvim" -- comment bindings
    }, {
        "folke/todo-comments.nvim", -- highlight TODOs
        dependencies = {"nvim-lua/plenary.nvim"}
    }
}
