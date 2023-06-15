local setup, toggleterm = pcall(require, 'toggleterm')
if not setup then return end

toggleterm.setup {
    close_on_exit = true,
    direction = 'float', -- tab, float, horizontal, vertical
    shell = vim.o.shell
}
