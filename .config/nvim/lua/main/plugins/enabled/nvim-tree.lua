return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        {
            desc = "File tree",
            "<leader>t",
            function()
                vim.cmd("NvimTreeCollapse")
                vim.cmd("NvimTreeFindFile")
            end,
        },
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                centralize_selection = true,
                width = 50,
            },
            renderer = {
                group_empty = true,
            },
        })
    end,
}
