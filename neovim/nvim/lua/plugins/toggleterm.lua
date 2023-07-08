-- luacheck: globals vim
return {
    "akinsho/toggleterm.nvim",
    opts = {
        size = 10,
        autochdir = true,
        hide_numbers = true,
        close_on_exit = true,
        direction = 'float', -- tab, float, horizontal, vertical
        shell = vim.o.shell,
        shade_terminals = false
    }
}
