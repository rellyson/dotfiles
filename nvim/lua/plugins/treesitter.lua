local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

local languages = {
  'bash',
  'c',
  'cpp',
  'dockerfile',
  'elixir',
  'gitignore',
  'go',
  'hcl',
  'java',
  'javascript',
  'jsdoc',
  'json',
  'lua',
  'markdown',
  'python',
  'ruby',
  'rust',
  'sql',
  'terraform',
  'toml',
  'typescript',
  'yaml'
}

treesitter.setup {
  highlight = {
    enable = true,
  },
  auto_install = true,
  ensure_installed = languages,
}
