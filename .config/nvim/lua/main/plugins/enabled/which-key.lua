return {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
        preset = "classic",
        delay = 1000,
    },
    keys = {
        {
            "<leader>k",
            function()
                require("which-key").show({
                    global = false,
                })
            end,
            desc = "Show all keymaps",
        },
        {
            "<leader>p",
            function()
                vim.cmd("let @+ = fnamemodify(expand('%'), ':~:.')")
            end,
            desc = "Copy file path to clipboard",
        },
        {
            "<leader>U",
            function()
                require("lazy").sync()
            end,
            desc = "Sync plugins",
        },
        {
            "<leader>f",
            function()
                vim.lsp.buf.format()
            end,
            desc = "Format file using LSP",
        },
        {
            "<leader>r",
            function()
                vim.lsp.buf.rename()
            end,
            desc = "Rename all references using LSP",
        },
        {
            "<leader>ca",
            function()
                vim.lsp.buf.code_action()
            end,
            desc = "Code actions of LSP",
        },
        {
            "<leader>lr",
            function()
                vim.lsp.stop_client(vim.lsp.get_active_clients())
                vim.cmd("edit")
                require("notify")(" Lsp restarted", vim.log.levels.OK)
            end,
            desc = "Restart LSP",
        },
        {
            "[d",
            function()
                vim.diagnostic.goto_prev()
            end,
            desc = "Go to previous diagnostic",
        },
        {
            "]d",
            function()
                vim.diagnostic.goto_next()
            end,
            desc = "Go to next diagnostic",
        },
        {
            "K",
            function()
                vim.lsp.buf.hover({
                    border = "double",
                })
            end,
            desc = "Show hover info from LSP",
        },
        {
            "<leader>w",
            function()
                vim.cmd('normal! "+yiw')
            end,
            desc = "Copy word under cursor into system clipboard",
        },
        {
            "<leader>R",
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
            desc = "Substitute word under cursor",
        },
        {
            "<leader>M",
            function()
                local filelist = vim.fn.systemlist(
                    "git diff --name-only --relative main...HEAD"
                )

                for _, file in ipairs(filelist) do
                    if vim.fn.filereadable(file) == 1 then
                        vim.cmd("edit " .. file)
                    end
                end
            end,
            desc = "Open all modified files on current branch",
        },
        {
            "<leader>u",
            function()
                local uuid = vim.fn.systemlist("uuidgen")[1]
                vim.api.nvim_put({ uuid }, "c", false, true)
            end,
            desc = "Insert UUID into current position",
        },
    },
    config = function()
        local wk = require("which-key")

        wk.add({
            mode = { "n", "v" },
            { "<leader>P", '"+p', desc = "Paste from system clipboard" },
            { "<leader>Y", '"+Y', desc = "YANK to system clipboard" },
            {
                "<leader>d",
                '"_d',
                desc = "Delete without replacing the unnamed register",
            },
            { "<leader>y", '"+y', desc = "yank to system clipboard" },
        })
    end,
}
