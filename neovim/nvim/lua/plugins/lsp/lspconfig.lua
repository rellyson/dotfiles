-- luacheck: globals vim
return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile", "BufWritePre"},
    dependencies = {"hrsh7th/cmp-nvim-lsp", "b0o/schemastore.nvim"},
    config = function()
        local lspconfig_status, lspconfig = pcall(require, "lspconfig")
        if not lspconfig_status then return end

        local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
        if not cmp_nvim_lsp_status then return end

        local keymap = vim.keymap -- for conciseness

        -- enable keybinds only  when lsp server available
        local on_attach = function(_, bufnr)
            -- keybind options
            local opts = {noremap = true, silent = true, buffer = bufnr}

            -- set keybinds
            keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
            keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
            keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
            keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>",
                       opts) -- go to implementation
            keymap.set('n', 'gr', vim.lsp.buf.references, opts) -- go to references
            keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
            keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
            keymap.set("n", "<leader>D",
                       "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
            keymap.set("n", "<leader>d",
                       "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
            keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
            keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
            keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
            keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
            keymap.set('n', '<space>f',
                       function() vim.lsp.buf.format {async = true} end, opts) -- format

            -- configuration for helm
            if vim.bo[bufnr].filetype == "helm" then
                vim.diagnostic.disable(bufnr)
                vim.defer_fn(function()
                    vim.diagnostic.reset(nil, bufnr)
                end, 1000)
            end
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport =
            true -- enable snippet support

        -- SERVERS CONFIG

        lspconfig['ansiblels'].setup {
            settings = {
                ansible = {path = "ansible"},
                executionEnvironment = {enabled = false},
                python = {interpreterPath = "python"},
                validation = {
                    enabled = true,
                    lint = {enabled = true, path = "ansible-lint"}
                }
            },
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['bashls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['clangd'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['diagnosticls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['docker_compose_language_service'].setup {
            filetypes = {"yaml", "yml"},
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['dockerls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['elixirls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['gopls'].setup {
            cmd = {'gopls'},
            settings = {
                gopls = {
                    experimentalPostfixCompletions = true,
                    analyses = {unusedparams = true, shadow = true},
                    gofumpt = false,
                    staticcheck = true,
                    usePlaceholders = true
                }
            },
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['helm_ls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['jsonls'].setup {
            settings = {
                json = {
                    schemas = require('schemastore').json.schemas(),
                    validate = {enable = true}
                }
            },
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['lua_ls'].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {Lua = {diagnostics = {globals = {"vim"}}}}
        }

        lspconfig['pyright'].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        diagnosticMode = "workspace",
                        typeCheckingMode = "basic",
                        useLibraryCodeForTypes = true
                    }
                }
            }
        }

        lspconfig['ruff_lsp'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['rust_analyzer'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['taplo'].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                taplo = {
                    diagnostics = {enable = true},
                    formatter = {enable = true},
                    validation = {enable = true}
                }
            }
        }

        lspconfig['terraformls'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['tflint'].setup {
            capabilities = capabilities,
            on_attach = on_attach
        }

        lspconfig['tsserver'].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            init_options = {preferences = {disableSuggestions = true}},
            settings = {typescript = {format = {enable = true}}}
        }

        lspconfig['yamlls'].setup {
            settings = {
                yaml = {
                    keyOrdering = false,
                    completion = true,
                    validate = false,
                    schemaStore = {
                        enable = true,
                        url = 'https://www.schemastore.org/api/json/catalog.json'
                    },
                    schemas = require('schemastore').yaml.schemas()
                }
            },
            capabilities = capabilities,
            on_attach = on_attach
        }
    end
}
