return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    keys = {
        {
            desc = "Next modified chunk",
            "]g",
            "<cmd>Gitsigns next_hunk<CR>",
        },
        {
            desc = "Previous modified chunk",
            "[g",
            "<cmd>Gitsigns prev_hunk<CR>",
        },
    },
    opts = {
        signs = {
            add = { text = "▓" },
            change = { text = "▓" },
        },
        base = "main",
    },
}
