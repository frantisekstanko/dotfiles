local map = vim.keymap.set

map("n", "<leader>fp", "<cmd>let @+ = fnamemodify(expand('%'), ':~:.')<CR>")
