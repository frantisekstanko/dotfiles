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
                layout_strategy = "vertical",
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
                require("telescope.builtin").git_files()
            end,
            desc = "Search in git files",
        },
    },
}
