return {
    "dinhhuy258/git.nvim",
    config = function()
        require("git").setup({
            default_mappings = false,
            winbar = true,
        })
    end,
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
