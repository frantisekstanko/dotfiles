# dotfiles

My dotfiles.

## Features

### nvim

- [lazy.vim](https://github.com/folke/lazy.nvim) as plugin manager
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

#### Custom keymaps

Column **Plugin* specifies which plugin is used to achieve the keymap action.

*(none)* means that the keymap is implemented natively, without relying
on a plugin.

Keymaps that rely on a certain plugin are defined in the plugin's config file,
meaning that disabling/deleting plugins is safe and easy. nvim will always
start properly.

| Keymap | Action | Plugin |
|-|-|-|
| \<leader\>fp | copy current buffer's file path to clipboard | *(none)* |
| gnn | Initialize incremental selection | treesitter |
| grn | Increment selection by node | treesitter |
| grc | Increment selection by scope | treesitter |
| grm | Decrement selection by node | treesitter |
