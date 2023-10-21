return {
    "dinhhuy258/git.nvim",
    opts = {
        default_mappings = false,
        winbar = true,
    },
    keys = {
        {
            desc = "Git blame",
            "<leader>b",
            function()
                vim.cmd("GitBlame")
            end,
        },
    },
}
