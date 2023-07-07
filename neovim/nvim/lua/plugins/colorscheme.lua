-- luacheck: globals vim
return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        local setup, catppuccin = pcall(require, 'catppuccin')
        if not setup then return end

        catppuccin.setup {
            flavour = 'mocha',
            term_colors = true,
            integrations = {
                barbar = true,
                cmp = true,
                gitsigns = true,
                mason = true,
                noice = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
                lsp_saga = true,
                notify = false,
                mini = false,
                which_key = true
            },
            color_overrides = {
                mocha = {
                    base = "#120d17",
                    mantle = "#120d17",
                    crust = "#120d17"
                }
            }
        }

        local status, _ = pcall(vim.cmd, 'colorscheme catppuccin')
        if not status then
            print('colorscheme not found!')
            return
        end
    end
}
