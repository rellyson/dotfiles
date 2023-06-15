local setup, barbecue = pcall(require, 'barbecue')
if not setup then return end

barbecue.setup {theme = "catppuccin"}
