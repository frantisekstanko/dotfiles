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
                        height = 0.95,
                        prompt_position = "top",
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
                        search = input,
                        additional_args = function()
                            return { "--hidden" }
                        end,
                    })
                end)
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
            "<leader>cc",
            function()
                local builtin = require("telescope.builtin")
                builtin.git_bcommits({
                    initial_mode = "normal",
                })
            end,
            desc = "Show commits for current buffer",
        },
        {
            "<leader>m",
            function()
                local git_diff = require("telescope").extensions.git_diff
                git_diff.modified_on_current_branch()
            end,
            desc = "Search in modified on current branch",
        },
        {
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
                })
            end,
            desc = "List buffer symbols using LSP",
        },
        {
            "<leader>C",
            function()
                require("telescope.builtin").find_files({
                    initial_mode = "normal",
                    cwd = "$HOME/.config/nvim",
                })
            end,
            desc = "Show nvim config files",
        },
        {
            "gi",
            function()
                require("telescope.builtin").lsp_implementations({
                    initial_mode = "normal",
                    show_line = false,
                })
            end,
            desc = "Go to implementation",
        },
        {
            "gd",
            function()
                require("telescope.builtin").lsp_definitions({
                    show_line = false,
                })
            end,
            desc = "Go to definition",
        },
        {
            "gr",
            function()
                print("Looking for references ...")

                require("telescope.builtin").lsp_references({
                    initial_mode = "normal",
                    include_declaration = false,
                    show_line = false,
                })
            end,
            desc = "Go to references",
        },
        {
            "<leader>\\",
            function()
                local builtin = require("telescope.builtin")
                builtin.resume({
                    initial_mode = "normal",
                })
            end,
            desc = "Resume last telescope session",
        },
    },
}
