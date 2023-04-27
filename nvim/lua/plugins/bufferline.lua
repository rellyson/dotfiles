local setup, bufferline = pcall(require, 'bufferline')
if not setup then
  return
end

bufferline.setup {
  options = {
    mode = "tabs",
    numbers = "ordinal",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left"
      }
    },
    diagnostics = "nvim_lsp",
    highlights = require("catppuccin.groups.integrations.bufferline").get()
  }
}
