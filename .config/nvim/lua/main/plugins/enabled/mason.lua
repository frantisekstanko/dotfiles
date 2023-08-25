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
            require("mason").setup({
                ui = {
                    border = "double",
                },
            })
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "intelephense",
                    "lua_ls",
                    "openscad_lsp",
                    "pylsp",
                    "quick_lint_js",
                    "rust_analyzer",
                },
            })
        end,
    },
}
