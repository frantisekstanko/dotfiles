return {
    "romgrk/barbar.nvim",
    lazy = false,
    keys = {
        { "<A-,>", "<cmd>BufferPrevious<CR>", desc = "Previous buffer" },
        { "<A-.>", "<cmd>BufferNext<CR>", desc = "Next buffer" },
        { "<A-/>", "<cmd>BufferClose<CR>", desc = "Close buffer" },
        { "<A-?>", "<cmd>BufferRestore<CR>", desc = "Restore buffer" },
    },
    init = function()
        vim.g.barbar_auto_setup = false

        local colors =
            require("gruvbox.palette").get_base_colors({}, "dark", "")

        local dark = colors.bg0
        local green = colors.green
        local orange = colors.orange
        local light = colors.fg0

        vim.api.nvim_set_hl(0, "BufferCurrent", { fg = dark, bg = green })
        vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = dark, bg = orange })
        vim.api.nvim_set_hl(0, "BufferInactive", { fg = light })
        vim.api.nvim_set_hl(0, "BufferInactiveMod", { fg = orange })
    end,
    config = function()
        require("barbar").setup({
            animation = false,
            clickable = false,
            icons = {
                button = false,
                modified = { button = "" },
                separator = { left = " " },
                filetype = {
                    enabled = false,
                },
            },
            focus_on_close = "right",
            insert_at_end = true,
            maximum_padding = 1,
            maximum_length = 32,
        })
    end,
}
