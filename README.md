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

Column *Plugin* specifies which plugin is used to achieve the keymap action.

*(none)* means that the keymap is implemented natively, without relying
on a plugin.

Keymaps that rely on a certain plugin are defined in the plugin's config file,
meaning that disabling/deleting plugins is safe and easy. nvim will always
start properly.

| Keymap | Action | Plugin |
|-|-|-|
| \<leader\>p | copy current buffer's file path to clipboard | *(none)* |
| gnn | Initialize incremental selection | treesitter |
| grn | Increment selection by node | treesitter |
| grc | Increment selection by scope | treesitter |
| grm | Decrement selection by node | treesitter |
| [c | Go to context (upwards) | treesitter-context |
| \<C-p\> | Search in git files | telescope |
| \<leader\>[ | Search in all files | telescope |
| \<C-f\> | Grep in all files in cwd | telescope |
| \<leader\>h | Search in help tags | telescope |
| \<leader\>u | Open undotree | undotree |
| \<leader\>k | Search in keymaps | telescope |
| \<leader\>t | File manager | nnn |
| \<leader\>x | Cellular automaton | cellular-automaton |
| \<A-,\> | Previous buffer | barbar |
| \<A-.\> | Next buffer | barbar |
| \<A-/\> | Close buffer | barbar |
| \<A-?\> | Restore buffer | barbar |
| \<A-\<\> | Move buffer left | barbar |
| \<A-\>\> | Move buffer right | barbar |
| \<leader\>cc | Open copilot chat | CopilotChat.nvim |
| ]g | Next modified chunk | gitsigns |
| [g | Previous modified chunk | gitsigns |
| \<leader\>z | Toggle zen mode | zen-mode |
| \<leader\>U | Update (currently runs Lazy sync) | lazy.nvim |
| \<leader\>T | Search in @TODO | todo-comments.nvim |
| \<leader\>m | Search in modified on current branch against the 'main' branch | telescope |
| \<leader\>, | Search in modified on current branch against the 'dev' branch | telescope |
| \<leader\>M | Open all modified files on current branch | *(none)* |
| \<C-u\> | During autocompletion: previous item | nvim-cmp |
| \<C-d\> | During autocompletion: next item | nvim-cmp |
| \<CR\> | During autocompletion: confirm selection | nvim-cmp |
| \<leader\>o | Open last session | persistence.nvim |
| \<leader\>y | yank to system clipboard | *(none)* |
| \<leader\>Y | YANK to system clipboard | *(none)* |
| \<leader\>d | Delete without replacing the unnamed register | *(none)* |
| \<leader\>P | Paste from system clipboard | *(none)* |
| \<leader\>f | Format file using Language Server Protocol | nvim-lspconfig |
| \<leader\>r | Rename all references using Language Server Protocol | nvim-lspconfig |
| \<leader\>R | Substitute word under cursor | |
| \<leader\>ca | Code actions of Language Server Protocol | nvim-lspconfig |
| \<leader\>lr | Restart Language Server Protocol | nvim-lspconfig |
| \<leader\>C | Show nvim config files | telescope |
| [d | Go to previous diagnostic | *(any diagnostics source)* |
| ]d | Go to next diagnostic | *(any diagnostics source)* |
| gi | Go to implementation | nvim-lspconfig |
| gd | Go to definition | nvim-lspconfig |
| gr | Go to references | nvim-lspconfig |
| K | Show hover info for word under cursor | nvim-lspconfig |
| \<leader\>cc | Copilot chat | CopilotChat.nvim |
| \<leader\>e | List buffer symbols using Language Server Protocol | nvim-lspconfig |
| \<leader\>\ | Resume last telescope session | telescope |
| \<leader\>w | Copy word under cursor into system clipboard | |
| \<leader\>b | Open git blame | git.nvim |
| \<leader\>g | Open lazygit | lazygit.nvim |
| \<leader\>u | Insert UUID into current position | |
| \<leader\>= | Commit history for current file | advanced-git-search |

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
