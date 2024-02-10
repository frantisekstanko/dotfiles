return {
    "aaronhallaert/advanced-git-search.nvim",
    config = function()
        local telescope = require("telescope")
        telescope.load_extension("advanced_git_search")
    end,
    dependencies = {
        {
            "nvim-telescope/telescope.nvim",
            "tpope/vim-fugitive",
            "tpope/vim-rhubarb",
        },
    },
    keys = {
        {
            desc = "Commit history for current file",
            "<leader>=",
            function()
                vim.cmd("AdvancedGitSearch diff_commit_file")
            end,
        },
    },
}
