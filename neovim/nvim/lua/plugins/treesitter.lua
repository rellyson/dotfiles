-- luacheck: globals vim
return {
    'nvim-treesitter/nvim-treesitter', -- syntax-highlight
    lazy = true,
    event = {"BufReadPre", "BufNewFile", "BufWritePre"},
    build = function()
        local ts_update = require('nvim-treesitter.install').update({
            with_sync = true
        })
        ts_update()
    end,
    config = function()
        local status, treesitter = pcall(require, "nvim-treesitter.configs")
        if not status then return end

        local languages = {
            'bash', 'c', 'cpp', 'dockerfile', 'elixir', 'gitignore', 'go',
            'git_config', 'gitignore', 'gitcommit', 'gomod', 'gosum', 'hcl',
            'java', 'javascript', 'jsdoc', 'json', 'julia', 'lua', 'markdown',
            'markdown_inline', 'mermaid', 'python', 'requirements', 'rego',
            'ruby', 'rust', 'sql', 'terraform', 'toml', 'typescript', 'yaml',
            'xml'
        }

        treesitter.setup {
            highlight = {enable = true},
            auto_install = true,
            ensure_installed = languages
        }
    end
}
