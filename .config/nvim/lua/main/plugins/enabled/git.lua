return {
    "dinhhuy258/git.nvim",
    config = function()
        require("git").setup({
            default_mappings = false,
        })
    end,
    keys = {
        {
            "<leader>b",
            function()
                require("barbecue.ui").toggle(false)
                vim.cmd("GitBlame")
            end,
            desc = "Git blame",
        },
    },
}
