return {
    "kdheepak/lazygit.nvim",
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
    keys = {
        {
            desc = "Show commits for current buffer",
            "<leader>cc",
            function()
                vim.cmd("LazyGitFilterCurrentFile")
            end,
        },
        {
            desc = "Open lazygit",
            "<leader>g",
            function()
                vim.cmd("LazyGit")
            end,
        },
    },
}
