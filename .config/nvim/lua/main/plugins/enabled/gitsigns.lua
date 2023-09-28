return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    keys = {
        { "]g", "<cmd>Gitsigns next_hunk<CR>" },
        { "[g", "<cmd>Gitsigns prev_hunk<CR>" },
    },
    opts = {
        signs = {
            add = { text = "▐" },
            change = { text = "▐" },
        },
    },
}
