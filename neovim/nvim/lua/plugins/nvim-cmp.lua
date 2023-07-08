-- luacheck: globals vim
return {
    "hrsh7th/nvim-cmp", -- completion,
    lazy = true,
    event = {"BufReadPre", "BufNewFile", "BufWritePre"},
    dependencies = {
        "L3MON4D3/LuaSnip", -- snippets
        "saadparwaiz1/cmp_luasnip", -- snippets
        "hrsh7th/cmp-nvim-lsp", -- lsp
        "hrsh7th/cmp-buffer", -- buffer
        "hrsh7th/cmp-path", -- path
        "rafamadriz/friendly-snippets", -- snippets
        "onsails/lspkind.nvim"
    },
    config = function()
        local cmp_status, cmp = pcall(require, "cmp")
        if not cmp_status then return end

        local luasnip_status, luasnip = pcall(require, "luasnip")
        if not luasnip_status then return end

        local lspkind_status, lspkind = pcall(require, "lspkind")
        if not lspkind_status then return end

        -- load vs-code like snippets from plugins (e.g. friendly-snippets)
        require("luasnip/loaders/from_vscode").lazy_load()

        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-_>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({select = false})
            }),
            sources = cmp.config.sources({
                {name = "nvim_lsp"}, {name = "luasnip"}, {name = "buffer"},
                {name = "path"}
            }),
            formatting = {
                format = lspkind.cmp_format({
                    mode = 'symbol',
                    ellipsis_char = '…',
                    maxwidth = 50
                })
            },
            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false
            },
            window = {completion = cmp.config.window.bordered()},
            experimental = {ghost_text = false}
        }
    end
}
