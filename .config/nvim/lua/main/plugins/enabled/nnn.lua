return {
    "luukvbaal/nnn.nvim",
    keys = {
        {
            "<leader>t",
            "<cmd>NnnPicker %:p:h<CR>",
            desc = "File manager",
        },
    },
    opts = {
        picker = {
            cmd = "nnn -A",
            style = {
                width = 0.6,
                height = 0.5,
            },
        },
    },
}
