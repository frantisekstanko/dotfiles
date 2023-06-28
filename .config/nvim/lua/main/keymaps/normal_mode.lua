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
    ["<leader>ca"] = {
        function()
            vim.lsp.buf.code_action()
        end,
        "Code actions of LSP",
    },
    ["<leader>lr"] = {
        function()
            vim.cmd("LspRestart")
            vim.cmd("sleep 100m")
            vim.cmd("e")
            require("notify")(" Lsp restarted", vim.log.levels.OK)
        end,
        "Restart LSP",
    },
    ["<leader>C"] = {
        function()
            require("telescope.builtin").find_files({
                initial_mode = "normal",
                cwd = "$HOME/.config/nvim",
            })
        end,
        "Show nvim config files",
    },
}
