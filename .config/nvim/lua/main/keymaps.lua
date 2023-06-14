local map = vim.keymap.set

map("n", "<leader>p", "<cmd>let @+ = fnamemodify(expand('%'), ':~:.')<CR>")
