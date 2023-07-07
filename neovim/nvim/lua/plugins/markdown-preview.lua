-- luacheck: globals vim
return {
    "iamcco/markdown-preview.nvim", -- markdown preview
    build = "cd app && npm install",
    lazy = true,
    ft = "markdown",
    config = function()
        vim.cmd [[
        let g:mkdp_auto_close = 0
        let g:mkdp_echo_preview_url = 1
        let g:mkdp_filetypes = ['markdown']
        let g:mkdp_theme = 'dark'
        let g:mkdp_port = '8877'
      ]]
    end
}
