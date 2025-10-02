return {
    "dinhhuy258/git.nvim",
    keys = {
        {
            "<leader>b",
            function()
                vim.cmd("GitBlame")
            end,
            desc = "Git blame",
        },
    },
    opts = {
        default_mappings = false,
        winbar = true,
    },
}
