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
    ["<leader>f"] = {
        function()
            vim.lsp.buf.format()
        end,
        "Format file using LSP",
    },
    ["<leader>r"] = {
        function()
            vim.lsp.buf.rename()
        end,
        "Rename all references using LSP",
    },
}
