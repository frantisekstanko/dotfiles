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

autocmd("FileType", {
    pattern = "javascript,scss",
    callback = function()
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    end,
})
