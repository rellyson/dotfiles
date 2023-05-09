local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

-- which servers should be installed
local servers = {
  "ansiblels",
  "bashls",
  "clangd",
  "diagnosticls",
  "dockerls",
  "docker_compose_language_service",
  "eslint",
  "elixirls",
  "gopls",
  "jsonls",
  "lua_ls",
  "marksman",
  "pyright",
  "tsserver",
  "taplo",
  "tflint",
  "terraformls",
  "rust_analyzer",
  "sqlls",
  "yamlls"
}

-- mason setup
mason.setup()

-- mason LSP setup
mason_lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true,
}
