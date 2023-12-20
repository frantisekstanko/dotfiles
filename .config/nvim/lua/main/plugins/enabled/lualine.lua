return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local gruvbox = require("lualine.themes.gruvbox")

        gruvbox.insert.a.bg = gruvbox.visual.a.bg

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
                globalstatus = true,
            },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        fmt = function(mode)
                            return " " .. mode .. " "
                        end,
                    },
                },
                lualine_b = { "branch", "diff" },
                lualine_c = {
                    { "filename" },
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
