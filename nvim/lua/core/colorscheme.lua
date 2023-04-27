local setup, catppuccin = pcall(require, 'catppuccin')
if not setup then
  return
end

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
    which_key = true,
  },
  color_overrides = {
		mocha = {
			base = "#110F18",
		},
	},
}

local status, _ = pcall(vim.cmd, 'colorscheme catppuccin')
if not status then
  print('colorscheme not found!')
  return
end
