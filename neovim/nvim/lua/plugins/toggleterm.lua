local setup, toggleterm = pcall(require, 'toggleterm')
if not setup then return end

toggleterm.setup {
    size = 10,
    hide_numbers = true,
    close_on_exit = true,
    direction = 'horizontal', -- tab, float, horizontal, vertical
    shell = vim.o.shell
}
