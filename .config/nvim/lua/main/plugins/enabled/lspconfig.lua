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
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lsp_capabilities = vim.tbl_deep_extend(
            "force",
            vim.lsp.protocol.make_client_capabilities(),
            require("cmp_nvim_lsp").default_capabilities()
        )

        for _, lsp in ipairs({
            "bashls",
            "pylsp",
            "quick_lint_js",
            "rust_analyzer",
            "ts_ls",
        }) do
            vim.lsp.config(lsp, {
                capabilities = lsp_capabilities,
                settings = {},
            })
        end

        vim.lsp.config("intelephense", {
            capabilities = lsp_capabilities,
            settings = {
                intelephense = {
                    completion = {
                        fullyQualifyGlobalConstantsAndFunctions = true,
                    },
                    files = {
                        associations = {
                            "*.php",
                            "*.php5",
                        },
                    },
                    diagnostics = {
                        relaxedTypeCheck = false,
                        noMixedTypeCheck = true,
                    },
                    compatibility = {
                        preferPsalmPhpstanPrefixedAnnotations = true,
                    },
                },
            },
        })

        vim.lsp.config("lua_ls", {
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
