return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    branch = "master",
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
                layout_strategy = "flex",
                layout_config = {
                    flip_columns = 130,
                    horizontal = {
                        anchor = "S",
                        width = 0.98,
                        height = 0.97,
                        prompt_position = "top",
                        preview_width = 0.5,
                    },
                    vertical = {
                        anchor = "S",
                        width = 0.98,
                        height = 0.97,
                        prompt_position = "top",
                        mirror = true,
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = false,
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
            desc = "Search in git files",
            "<C-p>",
            function()
                require("telescope.builtin").git_files({
                    show_untracked = true,
                    prompt_title = false,
                    results_title = "Git files",
                })
            end,
        },
        {
            desc = "Search in all files",
            "<leader>[",
            function()
                require("telescope.builtin").find_files({
                    hidden = true,
                    prompt_title = false,
                    results_title = "All files",
                    no_ignore = true,
                })
            end,
        },
        {
            desc = "Grep in all files in cwd",
            "<C-f>",
            function()
                vim.ui.input({
                    prompt = "grep string: ",
                }, function(input)
                    if input == nil or input == "" then
                        print(" ")
                        return
                    end

                    require("telescope.builtin").grep_string({
                        disable_coordinates = true,
                        initial_mode = "normal",
                        prompt_title = false,
                        results_title = 'Git grep for "' .. input .. '"',
                        search = input,
                        additional_args = function()
                            return { "--hidden" }
                        end,
                    })
                end)
            end,
        },
        {
            desc = "Search in help tags",
            "<leader>h",
            function()
                require("telescope.builtin").help_tags({
                    prompt_title = false,
                    results_title = "Search in help tags",
                })
            end,
        },
        {
            desc = "Search in modified on current branch against main",
            "<leader>m",
            function()
                require("telescope").extensions.git_diff.modified_on_current_branch()
            end,
        },
        {
            desc = "Show modified in last commit",
            "<leader>n",
            function()
                require("telescope").extensions.git_diff.modified_in_last_commit()
            end,
        },
        {
            desc = "Search in modified on current branch against dev",
            "<leader>,",
            function()
                require("telescope").extensions.git_diff.modified_on_current_branch({
                    diff_against_branch = "dev",
                })
            end,
        },
        {
            desc = "Commit history for current file",
            "<leader>=",
            function()
                require("telescope").extensions.git_diff.file_commit_history()
            end,
        },
        {
            desc = "List buffer symbols using LSP",
            "<leader>e",
            function()
                local builtin = require("telescope.builtin")
                builtin.lsp_document_symbols({
                    initial_mode = "normal",
                    symbol_width = 40,
                    ignore_symbols = {
                        "variable",
                        "namespace",
                    },
                    prompt_title = false,
                    results_title = "Document symbols",
                })
            end,
        },
        {
            desc = "Show nvim config files",
            "<leader>C",
            function()
                require("telescope.builtin").find_files({
                    initial_mode = "normal",
                    cwd = "$HOME/.config/nvim",
                    prompt_title = false,
                    results_title = "neovim configuration",
                })
            end,
        },
        {
            desc = "Go to implementation",
            "gi",
            function()
                require("telescope.builtin").lsp_implementations({
                    initial_mode = "normal",
                    show_line = false,
                    prompt_title = false,
                    results_title = "Implementations",
                })
            end,
        },
        {
            desc = "Go to definition",
            "gd",
            function()
                require("telescope.builtin").lsp_definitions({
                    initial_mode = "normal",
                    show_line = false,
                    prompt_title = false,
                    results_title = "Definitions",
                })
            end,
        },
        {
            desc = "Go to references",
            "gr",
            function()
                print("Looking for references ...")

                require("telescope.builtin").lsp_references({
                    initial_mode = "normal",
                    include_declaration = false,
                    show_line = false,
                    prompt_title = false,
                    results_title = "References",
                })
            end,
        },
        {
            desc = "Resume last telescope session",
            "<leader>\\",
            function()
                local builtin = require("telescope.builtin")
                builtin.resume({
                    initial_mode = "normal",
                })
            end,
        },
    },
}
