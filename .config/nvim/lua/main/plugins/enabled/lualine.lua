return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "arkav/lualine-lsp-progress",
    },
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
                    { "lsp_progress" },
                    {
                        "diagnostics",
                        sources = { "nvim_lsp" },
                        symbols = {
                            error = "ERR:",
                            warn = "WARN:",
                            info = "INFO:",
                            hint = "HINT:",
                        },
                    },
                },
            },
        })
    end,
}
