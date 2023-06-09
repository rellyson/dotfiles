local keymap = vim.keymap -- for conciseness
local opts = {noremap = true, silent = true}

-- general maps
keymap.set('n', 'x', '"_x')

-- map move line up and down
vim.cmd [[
  nnoremap <S-Up> :m-2<CR>==
  nnoremap <S-Down> :m+<CR>==
  inoremap <S-Up> <Esc>:m-2<CR>==gi
  inoremap <S-Down> <Esc>:m+<CR>==gi
]]

-- windows splitting
keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width
keymap.set('n', '<leader>sx', ':close<CR>') -- close current window split

-- tabs
keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
keymap.set('n', '<leader>tn', ':tabn<CR>') -- go to next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- go to previous tab

-- nvimtree
keymap.set('n', '<leader>b', ':NvimTreeToggle<CR>') -- toggles nvimtree

-- telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>') -- find files
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>') -- live grep
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>') -- grep string
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>') -- find in buffer
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>') -- help

-- barbar
keymap.set('n', '<A-,>', ' <Cmd>BufferPrevious<CR>', opts) -- move to previous tab
keymap.set('n', '<A-.>', ' <Cmd>BufferNext<CR>', opts) -- move to next tab
keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts) -- close tab

-- toggleterm
keymap.set('n', '<C-j>', ':ToggleTerm<CR>', opts) -- open terminal

-- trouble
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
           opts)
keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
           opts)
keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)

-- lspsaga
keymap.set('n', 'gh', ':Lspsaga lsp_finder<CR>', opts) -- find definition
keymap.set('n', 'K', ':Lspsaga hover_doc<CR>', opts) -- hover doc
keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")
keymap.set("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")
keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")
keymap.set({"n", "v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
