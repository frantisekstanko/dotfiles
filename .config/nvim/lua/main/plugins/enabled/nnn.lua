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
            cmd = "nnn -A -H -J",
            style = {
                width = 0.3,
                height = 0.7,
                border = "double",
            },
            fullscreen = false,
        },
    },
}
