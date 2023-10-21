return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local colors = require("gruvbox").palette

        local dark = colors.dark0
        local green = colors.neutral_green
        local orange = colors.bright_orange
        local light = colors.light0

        require("gruvbox").setup({
            bold = false,
            transparent_mode = true,
            overrides = {
                BufferCurrent = { fg = dark, bg = green },
                BufferCurrentMod = { fg = dark, bg = orange },
                BufferInactive = { fg = light },
                BufferInactiveMod = { fg = orange },
            },
        })

        vim.cmd.colorscheme("gruvbox")
    end,
}
