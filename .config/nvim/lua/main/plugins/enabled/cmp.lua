return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/vim-vsnip",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = {
                ["<C-u>"] = cmp.mapping.select_prev_item(),
                ["<C-d>"] = cmp.mapping.select_next_item(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            },
            sources = {
                { name = "nvim_lsp" },
            },
        })
    end,
}
