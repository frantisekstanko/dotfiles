return {
    "kdheepak/lazygit.nvim",
    keys = {
        {
            desc = "Open lazygit",
            "<leader>g",
            function()
                vim.cmd("LazyGit")
            end,
        },
    },
    config = function()
        vim.g.lazygit_floating_window_border_chars = {
            "┏",
            "━",
            "┓",
            "┃",
            "┛",
            "━",
            "┗",
            "┃",
        }
    end,
}
