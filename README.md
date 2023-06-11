# dotfiles

My dotfiles.

⭐ Issues and pull requests are welcome. ⭐

## Features

### nvim

All plugins load correctly on a clean install.

- [lazy.vim](https://github.com/folke/lazy.nvim) as plugin manager
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)

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

#### Giving credits

If anything in my configuration was taken from another repository,
I will credit the original author in my own commit message for that
chunk of code.

My commit messages generally serve as comments for files, since
comments inside files should be avoided.<sup>[1][2]</sup>

###### Footnotes
*[1]: Robert C. Martin - Clean Code: A Handbook of Agile Software Craftsmanship.
     Prentice Hall. ISBN 978-0132350884.*  
*[2]: Robert C. Martin - Clean Architecture: A Craftsman's Guide to Software Structure and Design.
     Prentice Hall. ISBN 978-0134494166.*
