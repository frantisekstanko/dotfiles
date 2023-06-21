return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    vertical = {
                        width = 0.98,
                        height = 0.98,
                    },
                },
                mappings = {
                    i = {
                        ["<Esc>"] = actions.close,
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
            "<leader>k",
            function()
                vim.cmd("WhichKey")
            end,
            desc = "Show keymaps",
        },
        {
            "<leader>m",
            function()
                local pickers = require("telescope.pickers")
                local finders = require("telescope.finders")
                local sorters = require("telescope.sorters")
                local previewers = require("telescope.previewers")

                pickers
                    .new({
                        results_title = "Modified on current branch",
                        finder = finders.new_oneshot_job({
                            "git",
                            "diff",
                            "--name-only",
                            "--relative",
                            "main",
                        }),
                        sorter = sorters.get_fuzzy_file(),
                        previewer = previewers.new_termopen_previewer({
                            get_command = function(entry)
                                return {
                                    "git",
                                    "diff",
                                    "--relative",
                                    "main",
                                    entry.value,
                                }
                            end,
                        }),
                    })
                    :find()
            end,
            desc = "Search in modified on current branch",
        },
    },
}
