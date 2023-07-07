local opt = vim.opt -- for conciseness

-- set leader key as space
vim.g.mapleader = ' '
vim.g.maplocaleader = ' '

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.autoread = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.completeopt = 'menu,menuone,noselect'

-- mouse and cursor
opt.cursorline = true
opt.mouse = 'a'

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.encoding = 'utf-8'
opt.syntax = 'enable'

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard:append('unnamedplus')

-- window splitting
opt.splitright = true
opt.splitbelow = true

-- miscelanneous
opt.iskeyword:append('-')
opt.shell = '/bin/zsh'
opt.wildignore = {'*/cache/*', '*/tmp/*'}
