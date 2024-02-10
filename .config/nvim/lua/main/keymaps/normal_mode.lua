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
    ["<leader>R"] = {
        function()
            local word_under_cursor = vim.fn.expand("<cword>")
            local go_left_three_times = vim.api.nvim_replace_termcodes(
                "<Left><Left><Left>",
                true,
                false,
                true
            )
            vim.api.nvim_feedkeys(
                ":%s/" .. word_under_cursor .. "//gI" .. go_left_three_times,
                "n",
                false
            )
        end,
        "Substitute word under cursor",
    },
    ["<leader>M"] = {
        function()
            local filelist =
                vim.fn.systemlist("git diff --name-only --relative main...HEAD")

            for _, file in ipairs(filelist) do
                if vim.fn.filereadable(file) == 1 then
                    vim.cmd("edit " .. file)
                end
            end
        end,
        "Open all modified files on current branch",
    },
    ["<leader>u"] = {
        function()
            local uuid = vim.fn.systemlist("uuidgen")[1]
            vim.api.nvim_put({ uuid }, "c", false, true)
        end,
        "Insert UUID into current position",
    },
}
