return {
    {
        "williamboman/mason.nvim",
        build = function()
            pcall(vim.cmd, "MasonUpdate")
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "lua_ls",
                    "rust_analyzer",
                    "intelephense",
                },
            })
        end,
    },
}
