local map = vim.keymap.set

map("n", "<leader>p", "<cmd>let @+ = fnamemodify(expand('%'), ':~:.')<CR>")

map("n", "<leader>U", function()
    require("lazy").sync()
end)
