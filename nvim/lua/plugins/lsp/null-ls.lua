local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = false,
  sources = {
    code_actions.gitsigns,
    code_actions.refactoring,
    completion.luasnip,
    completion.spell,
    diagnostics.ansiblelint,
    diagnostics.codespell,
    diagnostics.cpplint,
    diagnostics.credo,
    diagnostics.dotenv_linter,
    diagnostics.eslint,
    diagnostics.golangci_lint,
    diagnostics.shellcheck,
    diagnostics.markdownlint,
    diagnostics.semgrep,
    diagnostics.terraform_validate,
    diagnostics.tfsec,
    diagnostics.yamllint,
    diagnostics.pylint,
    formatting.isort,
    formatting.black,
    formatting.clang_format,
    formatting.codespell,
    formatting.eslint,
    formatting.gofmt,
    formatting.goimports,
    formatting.lua_format,
    formatting.mix,
    formatting.prettier,
    formatting.rego,
    formatting.rustfmt,
    formatting.shfmt,
    formatting.terraform_fmt,
    formatting.yamlfmt,
  },
  on_attach = function(current_client, bufnr)
    if current_client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              --  only use null-ls for formatting instead of lsp server
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  end,
}
