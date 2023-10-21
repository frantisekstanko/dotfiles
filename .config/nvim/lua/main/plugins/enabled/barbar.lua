return {
    "romgrk/barbar.nvim",
    lazy = false,
    keys = {
        { desc = "Previous buffer", "<A-,>", "<cmd>BufferPrevious<CR>" },
        { desc = "Next buffer", "<A-.>", "<cmd>BufferNext<CR>" },
        { desc = "Close buffer", "<A-/>", "<cmd>BufferClose<CR>" },
        { desc = "Restore buffer", "<A-?>", "<cmd>BufferRestore<CR>" },
        { desc = "Move buffer left", "<A-<>", "<cmd>BufferMovePrevious<CR>" },
        { desc = "Move buffer right", "<A->>", "<cmd>BufferMoveNext<CR>" },
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    opts = {
        animation = false,
        clickable = false,
        icons = {
            button = false,
            modified = { button = "" },
            separator = { left = " " },
            filetype = {
                enabled = false,
            },
        },
        focus_on_close = "right",
        insert_at_end = true,
        maximum_padding = 1,
        maximum_length = 32,
    },
}
