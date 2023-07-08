-- luacheck: globals vim
return {
    {
        "numToStr/Comment.nvim", -- comment bindings
        config = function() require("Comment").setup() end
    }, {
        "folke/todo-comments.nvim", -- highlight TODOs
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function() require("todo-comments").setup() end
    }
}
