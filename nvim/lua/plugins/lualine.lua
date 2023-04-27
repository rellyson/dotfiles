local setup, lualine = pcall(require, 'lualine')
if not setup then
  return
end

lualine.setup {
  options = {
    icons_enable = true,
    theme = 'catppuccin',
    sections = {
    lualine_x = {
      {
        require("noice").api.status.message.get_hl,
        cond = require("noice").api.status.message.has,
      },
      {
        require("noice").api.status.command.get,
        cond = require("noice").api.status.command.has,
        color = { fg = "#ff9e64" },
      },
      {
        require("noice").api.status.mode.get,
        cond = require("noice").api.status.mode.has,
        color = { fg = "#ff9e64" },
      },
      {
        require("noice").api.status.search.get,
        cond = require("noice").api.status.search.has,
        color = { fg = "#ff9e64" },
      },
    },
   },
  },
  extensions = {
   'nvim-tree',
   'fzf',
   'fugitive',
   'toggleterm',
  },
}
