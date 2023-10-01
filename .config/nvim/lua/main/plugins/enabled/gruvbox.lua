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

        local colors = require("gruvbox").palette

        local dark = colors.dark0
        local green = colors.neutral_green
        local orange = colors.bright_orange
        local light = colors.light0

        vim.api.nvim_set_hl(0, "BufferCurrent", { fg = dark, bg = green })
        vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = dark, bg = orange })
        vim.api.nvim_set_hl(0, "BufferInactive", { fg = light })
        vim.api.nvim_set_hl(0, "BufferInactiveMod", { fg = orange })
    end,
}
