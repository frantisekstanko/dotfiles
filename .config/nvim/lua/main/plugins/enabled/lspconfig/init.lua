return {
    "neovim/nvim-lspconfig",
    config = function()
        require("main.plugins.enabled.lspconfig.servers.bashls")
    end,
}
