return {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
        dir = os.getenv("HOME") .. "/data/.nvim/sessions/",
    },
}
