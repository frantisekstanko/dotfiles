local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["rust_analyzer"].setup({
    capabilities = lsp_capabilities,
    settings = {},
})
