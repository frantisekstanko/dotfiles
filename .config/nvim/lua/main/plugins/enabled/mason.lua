return {
    "williamboman/mason.nvim",
    build = function()
        pcall(vim.cmd, "MasonUpdate")
    end,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    opts = {
        ui = {
            border = "double",
        },
    },
    config = function(_, opts)
        require("mason").setup(opts)

        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls",
                "pylsp",
                "quick_lint_js",
                "rust_analyzer",
                "ts_ls",
                "intelephense",
                "lua_ls",
            },
        })
    end,
}
