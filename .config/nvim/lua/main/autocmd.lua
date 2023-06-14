local autocmd = vim.api.nvim_create_autocmd

autocmd("User", {
    pattern = "LazyVimStarted",
    callback = function()
        local stats = require("lazy").stats()
        print("Loaded in " .. math.floor(stats.startuptime + 0.5) .. " ms")
    end,
})

autocmd("FileType", {
    pattern = "help",
    callback = function()
        vim.cmd.wincmd("L")
    end,
})
