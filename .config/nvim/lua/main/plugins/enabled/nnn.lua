return {
    "luukvbaal/nnn.nvim",
    keys = {
        {
            desc = "File manager",
            "<leader>t",
            "<cmd>NnnPicker %:p:h<CR>",
        },
    },
    opts = {
        picker = {
            cmd = "nnn -A -H",
            style = {
                width = 0.6,
                height = 0.7,
                border = "double",
            },
            fullscreen = false,
        },
    },
}
