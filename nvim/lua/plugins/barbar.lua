local setup, barbar = pcall(require,"barbar")
if not setup then
  return
end

barbar.setup {
  animation = true,
  clickable = true,
  highlight_visible = true,
  sidebar_filetypes = {
    NvimTree = true,
  }
}
