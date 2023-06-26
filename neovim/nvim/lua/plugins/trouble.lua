local setup, trouble = pcall(require, 'trouble')
if not setup then return end

trouble.setup {
    position = "bottom",
    icons = true,
    group = true,
    padding = true,
    indent_lines = true,
    auto_open = false,
    auto_close = false,
    auto_preview = true,
    auto_jump = {"lsp_definitions"},
    use_diagnostic_signs = false,
    signs = {hint = "󱩎", information = "", warning = "", error = ""}
}
