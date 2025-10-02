local autocmd = vim.api.nvim_create_autocmd

autocmd("User", {
    pattern = "LazyVimStarted",
    callback = function()
        local stats = require("lazy").stats()
        local version = vim.version()
        print(
            "nvim "
                .. version.major
                .. "."
                .. version.minor
                .. "."
                .. version.patch
                .. " | loaded in "
                .. math.floor(stats.startuptime + 0.5)
                .. " ms"
        )
    end,
})

autocmd("FileType", {
    pattern = "help",
    callback = function()
        vim.cmd.wincmd("L")
    end,
})

local filetype_settings = {
    {
        filetypes = {
            "javascript",
            "scss",
            "lua",
            "typescript",
            "json",
            "css",
            "typescriptreact",
        },
        indent = 2,
    },
    { filetypes = { "twig" }, indent = 4, set_filetype = "html" },
    { filetypes = { "php" }, indent = 4 },
}

for _, config in ipairs(filetype_settings) do
    autocmd("FileType", {
        pattern = config.filetypes,
        callback = function()
            if config.set_filetype then
                vim.bo.filetype = config.set_filetype
            end
            vim.opt.shiftwidth = config.indent
            vim.opt.tabstop = config.indent
            vim.opt.softtabstop = config.indent
        end,
    })
end
