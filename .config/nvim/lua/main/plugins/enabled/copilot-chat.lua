return {
    "CopilotC-Nvim/CopilotChat.nvim",
    config = function()
        vim.keymap.set("i", "<C-k>", 'copilot#Accept("\\<CR>")', {
            expr = true,
            replace_keycodes = false,
        })
        vim.g.copilot_no_tab_map = true
    end,
    dependencies = {
        { "github/copilot.vim" },
        { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
}
