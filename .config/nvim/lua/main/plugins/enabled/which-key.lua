return {
    "folke/which-key.nvim",
    opts = {
        triggers = "",
    },
    config = function()
        local wk = require("which-key")

        wk.register(require("main.keymaps.normal_mode"))
        wk.register(require("main.keymaps.normal_and_visual_mode"), {
            mode = { "n", "v" },
        })
    end,
}
