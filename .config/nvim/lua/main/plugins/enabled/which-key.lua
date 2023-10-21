return {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
        triggers = "",
    },
    keys = {
        {
            desc = "Show keymaps",
            "<leader>k",
            function()
                vim.cmd("WhichKey")
            end,
        },
    },
    config = function()
        local wk = require("which-key")

        wk.register(require("main.keymaps.normal_mode"))
        wk.register(require("main.keymaps.normal_and_visual_mode"), {
            mode = { "n", "v" },
        })
    end,
}
