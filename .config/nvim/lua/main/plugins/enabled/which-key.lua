return {
    "folke/which-key.nvim",
    opts = {
        triggers = "",
    },
    config = function()
        local wk = require("which-key")

        wk.register(require("main.keymaps.normal_mode"))
    end,
}
