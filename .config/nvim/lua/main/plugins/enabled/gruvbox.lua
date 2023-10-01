return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            bold = false,
            transparent_mode = true,
        })

        vim.cmd.colorscheme("gruvbox")

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
}
