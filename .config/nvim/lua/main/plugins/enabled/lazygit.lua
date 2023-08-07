return {
    "kdheepak/lazygit.nvim",
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
