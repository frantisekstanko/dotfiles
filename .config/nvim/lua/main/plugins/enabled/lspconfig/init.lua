return {
    "neovim/nvim-lspconfig",
    config = function()
        require("main.plugins.enabled.lspconfig.servers.bashls")
        require("main.plugins.enabled.lspconfig.servers.lua_ls")
        require("main.plugins.enabled.lspconfig.servers.rust_analyzer")
        require("main.plugins.enabled.lspconfig.servers.intelephense")
        require("main.plugins.enabled.lspconfig.servers.quick_lint_js")
    end,
}
