return {
    "neovim/nvim-lspconfig",
    build = function()
        pcall(vim.cmd, "MasonUpdate")
    end,
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    border = "double",
                },
            },
        },
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                automatic_installation = true,
            },
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

        for _, lsp in ipairs({
            "bashls",
            "intelephense",
            "openscad_lsp",
            "pylsp",
            "quick_lint_js",
            "rust_analyzer",
            "tsserver",
        }) do
            lspconfig[lsp].setup({
                capabilities = lsp_capabilities,
                settings = {},
            })
        end

        lspconfig["lua_ls"].setup({
            capabilities = lsp_capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    telemetry = {
                        enable = false,
                    },
                    workspace = {
                        checkThirdParty = false,
                    },
                },
            },
        })
    end,
}
