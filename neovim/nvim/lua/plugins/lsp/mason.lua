-- luacheck: globals vim
return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim", "jay-babu/mason-null-ls.nvim"
    },
    config = function()
        local mason_status, mason = pcall(require, "mason")
        if not mason_status then return end

        local mason_lspconfig_status, mason_lspconfig = pcall(require,
                                                              "mason-lspconfig")
        if not mason_lspconfig_status then return end

        -- which servers should be installed
        local servers = {
            "ansiblels", "bashls", "clangd", "diagnosticls", "dockerls",
            "docker_compose_language_service", "eslint", "elixirls", "gopls",
            "jsonls", "lua_ls", "marksman", "pyright", "tsserver", "taplo",
            "tflint", "terraformls", "ruff_lsp", "rust_analyzer", "sqlls",
            "yamlls"
        }

        -- which formatters should be installed
        local null_ls = {
            "yamllint", "yamlfmt", "luacheck", "luaformatter", "terraform_fmt",
            "shfmt", "codespell", "goimports", "golangci_lint", "prettier"
        }

        -- mason setup
        mason.setup()

        -- mason LSP setup
        mason_lspconfig.setup {
            ensure_installed = servers,
            automatic_installation = true
        }

        -- mason null-ls setup
        require("mason-null-ls").setup({
            ensure_installed = null_ls,
            automatic_installation = true
        })

    end
}
