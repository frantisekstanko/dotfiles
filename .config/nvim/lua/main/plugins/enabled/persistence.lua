return {
    "folke/persistence.nvim",
    event = "BufReadPre",
    lazy = false,
    keys = {
        {
            "<leader>o",
            function()
                require("persistence").load()
            end,
            desc = "Open last session",
        },
    },
    opts = {
        dir = os.getenv("HOME") .. "/data/.nvim/sessions/",
    },
}
