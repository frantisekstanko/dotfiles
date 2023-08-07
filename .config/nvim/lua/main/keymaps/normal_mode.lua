return {
    ["<leader>p"] = {
        function()
            vim.cmd("let @+ = fnamemodify(expand('%'), ':~:.')")
        end,
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
    ["<leader>ca"] = {
        function()
            vim.lsp.buf.code_action()
        end,
        "Code actions of LSP",
    },
    ["<leader>lr"] = {
        function()
            vim.lsp.stop_client(vim.lsp.get_active_clients())
            vim.cmd("edit")
            require("notify")(" Lsp restarted", vim.log.levels.OK)
        end,
        "Restart LSP",
    },
    ["[d"] = {
        function()
            vim.diagnostic.goto_prev()
        end,
        "Go to previous diagnostic",
    },
    ["]d"] = {
        function()
            vim.diagnostic.goto_next()
        end,
        "Go to next diagnostic",
    },
    ["K"] = {
        function()
            vim.lsp.buf.hover()
        end,
        "Show hover info from LSP",
    },
    ["<leader>w"] = {
        function()
            vim.cmd('normal! "+yiw')
        end,
        "Copy word under cursor into system clipboard",
    },
}
