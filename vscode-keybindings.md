# My VSCode Key Bindings

This file provides my key bindings for VSCode.

> It will be better to read the key bindings in the `keybindings.json` & `init.vim` files as they provide more information.

## Neovim

> Certain nvim configurations are placed in the `keybindings.json` file because they do not function correctly when added directly to the `init.vim` file.

| Keybind | Action |
| ------- | ------ |
| `jj`       | Exit insert mode |
| `<space>a` | Selects the entire document.                |
| `<space>o` | Inserts a new line below the current line.  |
| `<space>O` | Inserts a new line above the current line.  |
| `<space>h` | Clears the search highlighting.             |
| `<space>j` | Scrolls down half a page.                   |
| `<space>k` | Scrolls up half a page.                     |
| `<space>b` (in visual mode) | Surrounds selected text with double asterisks. |
| ``<space>` `` (in visual mode) | Surrounds selected text with backticks (`` ` ``). |

### VSCode Folding

| Keybind    | Action |
| ---------- | ------ |
| `zl`       | Toggles folding.                            |
| `z;`       | Folds all code.                             |
| `zm`       | Unfolds all code.                           |
| `zp`       | Goes to the parent fold.                    |
| `zj`       | Goes to the next fold.                      |
| `zk`       | Goes to the previous fold.                  |


### VSCode Peek, Reveal, and Find

| Keybind    | Action |
| ---------- | ------ |
| `gd`       | Calls the VSCode `"peekDefinition"` command.   |
| `gD`       | Calls the VSCode `"revealDefinition"` command. |
| `gr`       | Calls the VSCode `"referenceSearch.trigger"` command. |
| `gR`       | Calls the VSCode `"references-view.findReferences"` command. |
| `gy`       | Calls the VSCode `"goToTypeDefinition"` command. |
| `grn`      | Calls the VSCode `"rename"` command.           |

## Movement

| Keybind | Action |
| ------- | ------ |
| `Alt + k` | Move lines up |
| `Alt + j` | Move lines down |

## Navigation

| Keybind | Action |
| ------- | ------ |
| `Alt + h` | Navigate to the explorer |
| `Alt + l` | Navigate to the editor |
| `Ctrl + h` | Go to the previous editor tab |
| `Ctrl + l` | Go to the next editor tab |

## Toggle

| Keybind | Action |
| ------- | ------ |
| `Alt + a` | Toggle activity bar |
| `Alt + b` | Toggle menu bar |
| `Alt + s` | Toggle side bar |
| `Alt + shift + s` | Toggle status bar |
| `Alt + shift + d` | Toggle developer tools |

## Files

| Keybind | Action |
| ------- | ------ |
| `Alt + d` | Open a folder (directory) |
| `Alt + f` | Open a file |

## Resizing

### Terminal

| Keybind | Action |
| ------- | ------ |
| `Ctrl + Shift + h` | Resize the terminal pane to the left |
| `Ctrl + Shift + l` | Resize the terminal pane to the right |
| `Ctrl + Shift + j` | Resize the terminal pane down |
| `Ctrl + Shift + k` | Resize the terminal pane up |

### View

| Keybind | Action |
| ------- | ------ |
| `Alt + Ctrl + j` | Increase the view size |
| `Alt + Ctrl + k` | Decrease the view size |

## Terminal

| Keybind | Action |
| ------- | ------ |
| `Alt + Enter` | Toggle the terminal |
| `Alt + m` | Toggle maximize the panel when in terminal focus |
| `Alt + /` | Position panel to the right and focus terminal |
| `Alt + ,` | Position panel to the bottom and focus terminal |

## Run Configurations

| Keybind | Action |
| ------- | ------ |
| `Ctrl + Shift + r` | Run without debugging |

## Tabs

| Keybind | Action |
| ------- | ------ |
| `Ctrl + w` | Close current tab |
| `Ctrl + shift + w` | Close all tabs |

## Quick Open Configs

| Keybind | Action |
| ------- | ------ |
| `Alt + o` | Open the quick open dialog |
| `Ctrl + j` | Select the next suggestion in quick open |
| `Ctrl + k` | Select the previous suggestion in quick open |

## Other Configs

| Keybind | Action |
| ------- | ------ |
| `Alt + c` | Show available commands |
| `Alt + r` | Open recent files |