return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = "gruvbox",
                section_separators = {
                    left = "",
                    right = "",
                },
                component_separators = {
                    left = "┃",
                    right = "┃",
                },
            },
            sections = {
                lualine_b = { "branch", "diff" },
                lualine_c = {
                    { "filename" },
                    {
                        "diagnostics",
                        sources = { "nvim_lsp" },
                    },
                },
            },
        })
    end,
}
