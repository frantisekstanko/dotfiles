return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "frantisekstanko/telescope-git-diff" },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                scroll_strategy = "limit",
                borderchars = {
                    "━",
                    "┃",
                    "━",
                    "┃",
                    "┏",
                    "┓",
                    "┛",
                    "┗",
                },
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        width = 0.98,
                        height = 0.98,
                        prompt_position = "top",
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("git_diff")
    end,
    keys = {
        {
            "<C-p>",
            function()
                require("telescope.builtin").git_files({
                    show_untracked = true,
                })
            end,
            desc = "Search in git files",
        },
        {
            "<C-f>",
            function()
                local search = vim.fn.input("grep string: ")

                if search == "" then
                    return
                end

                require("telescope.builtin").grep_string({
                    initial_mode = "normal",
                    search = search,
                    additional_args = function()
                        return { "--hidden" }
                    end,
                })
            end,
            desc = "Grep in all files in cwd",
        },
        {
            "<leader>h",
            function()
                local builtin = require("telescope.builtin")
                builtin.help_tags()
            end,
            desc = "Search in help tags",
        },
        {
            "<leader>m",
            function()
                local git_diff = require("telescope").extensions.git_diff
                git_diff.modified_on_current_branch()
            end,
            desc = "Search in modified on current branch",
        },
    },
}
