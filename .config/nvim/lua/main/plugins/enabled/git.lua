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
            "<leader>b",
            function()
                vim.cmd("GitBlame")
            end,
            desc = "Git blame",
        },
    },
}
