return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            mapping = {
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<CR>"] = cmp.mapping.confirm(),
            },
            sources = {
                { name = "nvim_lsp" },
            },
        })
    end,
}
