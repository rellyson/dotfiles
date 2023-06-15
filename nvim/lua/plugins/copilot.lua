vim.cmd [[
    imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")
    let g:copilot_no_tab_map = v:true

    imap <silent><script><expr> <C-e> copilot#Dismiss("\<CR>")
]]

vim.cmd [[ highlight CopilotSugggestion guifg=#537EC9 gui=italic ]]

-- use this to disable filetypes
vim.g.copilot_disable_filetypes = {'markdown', 'help'}
