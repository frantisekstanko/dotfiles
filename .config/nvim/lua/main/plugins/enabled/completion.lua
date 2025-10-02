return {
    "saghen/blink.cmp",
    version = "1.*",
    config = function()
        require("blink.cmp").setup({
            keymap = {
                ["<C-u>"] = { "select_prev", "fallback" },
                ["<C-d>"] = { "select_next", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
            },
            completion = {
                menu = {
                    border = "single",
                },
                list = {
                    selection = { preselect = false },
                },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 0,
                    window = {
                        border = "single",
                    },
                },
            },
        })
    end,
}
