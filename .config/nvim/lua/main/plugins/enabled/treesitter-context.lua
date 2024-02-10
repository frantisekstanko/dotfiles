return {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufEnter",
    opts = {
        max_lines = 5,
    },
    keys = {
        {
            "[c",
            function()
                require("treesitter-context").go_to_context()
            end,
            desc = "Go to context (upwards)",
        },
    },
}
