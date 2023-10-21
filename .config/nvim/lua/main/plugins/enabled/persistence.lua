return {
    "folke/persistence.nvim",
    event = "BufReadPre",
    lazy = false,
    keys = {
        {
            desc = "Open last session",
            "<leader>o",
            function()
                require("persistence").load()
            end,
        },
    },
    opts = {
        dir = os.getenv("HOME") .. "/data/.nvim/sessions/",
    },
}
