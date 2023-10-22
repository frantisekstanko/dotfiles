return {
    "dinhhuy258/git.nvim",
    keys = {
        {
            desc = "Git blame",
            "<leader>b",
            function()
                vim.cmd("GitBlame")
            end,
        },
    },
    opts = {
        default_mappings = false,
        winbar = true,
    },
}
