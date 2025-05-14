vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guicursor = ""
vim.opt.colorcolumn = "80,120"
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/data/.nvim/undodir/"
vim.opt.termguicolors = true
vim.opt.mouse = nil
vim.opt.cursorline = true
vim.opt.showmode = false

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.diagnostic.config({
    virtual_text = {
        severity_sort = true,
        spacing = 0,
    },
    float = {
        border = "double",
    },
})

vim.cmd([[command! -nargs=0 W w]])

vim.keymap.set("i", "<C-k>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
