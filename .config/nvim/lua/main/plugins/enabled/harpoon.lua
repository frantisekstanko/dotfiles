return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>a",
            function()
                require("harpoon.mark").add_file()
            end,
            desc = "Mark file",
        },
        {
            "<C-e>",
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            desc = "List of marked files",
        },
        {
            "<C-j>",
            function()
                require("harpoon.ui").nav_file(1)
            end,
            desc = "Go to marked file 1",
        },
        {
            "<C-k>",
            function()
                require("harpoon.ui").nav_file(2)
            end,
            desc = "Go to marked file 2",
        },
        {
            "<C-l>",
            function()
                require("harpoon.ui").nav_file(3)
            end,
            desc = "Go to marked file 3",
        },
        {
            "<C-;>",
            function()
                require("harpoon.ui").nav_file(4)
            end,
            desc = "Go to marked file 4",
        },
    },
    opts = {
        menu = { width = vim.api.nvim_win_get_width(0) - 16 },
    },
}
