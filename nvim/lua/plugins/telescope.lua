local telescope_setup, telescope = pcall(require, 'telescope')
if not telescope_setup then
  return
end

telescope.setup()

telescope.load_extension("fzf")
