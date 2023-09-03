-- luacheck: globals vim
return {
    "jose-elias-alvarez/null-ls.nvim",
    event = {"BufReadPre", "BufNewFile", "BufWritePre"},
    config = function()
        local setup, null_ls = pcall(require, "null-ls")
        if not setup then return end

        local completion = null_ls.builtins.completion
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        null_ls.setup {
            debug = false,
            sources = {
                completion.luasnip, completion.spell, diagnostics.ansiblelint,
                diagnostics.cpplint, diagnostics.credo,
                diagnostics.dotenv_linter, diagnostics.eslint,
                diagnostics.golangci_lint, diagnostics.shellcheck,
                diagnostics.luacheck, diagnostics.opacheck, diagnostics.ruff,
                diagnostics.semgrep, diagnostics.shellcheck,
                diagnostics.terraform_validate, diagnostics.tfsec,
                diagnostics.yamllint, formatting.isort, formatting.eslint,
                formatting.gofmt, formatting.goimports, formatting.lua_format,
                formatting.mix, formatting.packer, formatting.rustfmt,
                formatting.terraform_fmt
            },
            on_attach = function(current_client, bufnr)
                if current_client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({
                        group = augroup,
                        buffer = bufnr
                    })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                filter = function(client)
                                    --  null-ls for formatting instead of lsp server
                                    return client.name == "null-ls"
                                end,
                                bufnr = bufnr
                            })
                        end
                    })
                end
            end
        }
    end
}
