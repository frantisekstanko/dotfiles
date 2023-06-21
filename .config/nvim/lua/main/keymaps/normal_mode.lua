return {
    ["<leader>p"] = {
        "<cmd>let @+ = fnamemodify(expand('%'), ':~:.')<CR>",
        "Copy file path to clipboard",
    },
    ["<leader>U"] = {
        function()
            require("lazy").sync()
        end,
        "Sync plugins",
    },
}
