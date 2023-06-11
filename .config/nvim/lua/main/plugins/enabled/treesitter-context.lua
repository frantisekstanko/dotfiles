return {
    "nvim-treesitter/nvim-treesitter-context",
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