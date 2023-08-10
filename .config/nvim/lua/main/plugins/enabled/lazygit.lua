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
            "<leader>cc",
            function()
                vim.cmd("LazyGitFilterCurrentFile")
            end,
            desc = "Show commits for current buffer",
        },
    },
}
