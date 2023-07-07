-- luacheck: globals vim
return {
    "windwp/nvim-autopairs", -- autopair
    dependencies = {
        "hrsh7th/nvim-cmp" -- completion
    },
    config = function()
        require("nvim-autopairs").setup {check_ts = true}
        local cmp_autopairs_setup, cmp_autopairs = pcall(require,
                                                         "nvim-autopairs.completion.cmp")
        if not cmp_autopairs_setup then return end

        local cmp_setup, cmp = pcall(require, "cmp")
        if not cmp_setup then return end

        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
