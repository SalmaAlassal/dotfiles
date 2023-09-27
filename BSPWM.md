# BSPWM (Binary Space Partitioning Window Manager)

## BSPWM Keybindings

## Layouts

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + m` | Alternate between tiled and monocle layout |
| `Super + t` | Set tiled layout |
| `Super + T` | Set pseudo_tiled layout |
| `Super + s` | Set floating layout |
| `Super + f` | Set fullscreen layout |

## Keyboard Layout

| Keybinding | Description                         |
|------------|-------------------------------------|
| `F3`       | Toggle keyboard layout between Arabic and English |

## Appearance

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Alt + {-,+}` | Hide/Show Bar (Polybar and/or eww) |
| `Super + w` | Set a random wallpaper |
| `Super + Alt + +` | Increase the transparency of the focused window |
| `Super + Alt + -` | Decrease the transparency of the focused window |
| `Super + Alt + =` | Reset the transparency of the focused window |


## Reload Configs

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + Escape` | Reload sxhkd configuration |
| `Super + Alt + r` | Reload BSPWM configuration |

## Resizing

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + Alt + {h,j,k,l}`   | Resize windows |
|`Super + Ctrl +{h,j,k,l}`| Contract a window by moving one of its side inward |
| `Super + Alt + mouse` | Global window gaps scroll |
| `Super + mouse` | Focused desktop window gaps scroll |
| `Super + equal` | Make split ratios equal |
| `Super + minus` | Make split ratios balanced |

## Movement

| Keybinding | Description                         |
|------------|-------------------------------------|
|`Super + {H,J,K,L}` | Move the current node |
|`Alt + {H,J,K,L}` | Move a floating window |
| `Super + Shift + {1-9}` | Move the current node to a given desktop |
| `Super + Shift + numpad_keys` | Move the current node to a given desktop using numpad keys |
| `Super + r` | Rotate desktop |
| `Super + c` | Circulate the leaves of the tree |

## Navigation

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + {h,j,k,l}` | Window navigation using hjkl |
| `Super + {grave,Tab}` | Set focus to the last node/desktop |
| `Alt + Tab` | Switch to the previous node in the current desktop |
| `Super + {1-9}` | Switch to desktops 1-9 using Super + 1-9 |
| `Super + numpad_keys` | Switch to desktops 1-9 using Super + numpad keys |
| `Super + {Left,Right}` | Focus the next/previous desktop in the current monitor |
| `Super + g` | Swap the current node and the biggest node in the current desktop |
| `Super + Shift + g` | Swap the current node with the biggest node in the workspaces |

## Applications

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + F1` | Show keybindings help |
| `Super + Return` | Open Terminal (alacritty) |
| `Super + Alt + Return` | Open a floating terminal |
| `Super + o` | Open a scratchpad terminal |
| `Super + Alt + s` | Show/Hide scratchpad terminal |
| `Super + space` | Open applications menu |
| `Alt + space` | Open theme selector |
| `Super + Q/q` | Close or kill a window |
| `Super + Ctrl + {p,r,q,k}` | Power off, reboot, log out, kill an app |
|`Shift + Alt + {b, t}` | Open a browser / text editor |


## Screenshot

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Print` | Take a screenshot |
| `Super + Print` | Take a screenshot of a selected area |

## Preselect

| Keybinding | Description                         |
|------------|-------------------------------------|
| `Super + Ctrl + {Left,Down,Up,Right}` | Preselect the direction |
| `Super + Ctrl + {1-9}` | Preselect the ratio |
| `Super + Ctrl + Space` | Cancel the preselection for the focused node |
| `Super + Ctrl + Shift + Space` | Cancel the preselection for the focused desktop |

-------------------------------------------
-------------------------------------------

## BSPWM Structure

Here's a breakdown of the basic bspwm structure:

```
Monitor 0
|-- Desktop 0
|   |-- Node (Container)
|   |   |-- Leaf (Window A)
|   |   |-- Leaf (Window B)
|   |
|   |-- Node (Container)
|       |-- Leaf (Window C)
|
|-- Desktop 1
|   |-- Node (Container)
|       |-- Leaf (Window D)
|
Monitor 1
|-- Desktop 0
|   |-- Node (Container)
|       |-- Leaf (Window E)
|
```

1. **Monitors (Physical Screens)**:
   - In BSPWM, monitors represent physical displays or screen areas. Each monitor can have one or more desktops.

2. **Desktops (Workspaces)**:
   - Desktops are virtual workspaces within each monitor. 
   - Desktops are numbered from 0, 1, 2, and so on, within each monitor.
  
3. **Containers Nodes:**
    - Container nodes are used to group leaf nodes and create splits in the window layout. These splits can be horizontal or vertical.
    - Containers can be nested to create complex layouts.

4. **Leaf Nodes:**
   - Leaves represent individual windows. They can be moved, resized, and manipulated within the layout.
   - They are the lowest level in the tree structure and cannot have child nodes.


### Example

- On Monitor 1, Desktop 1 contains a vertical split container with a terminal at the top and a vertical split container at the bottom. The horizontal split container contains Firefox and VSCode.
- On Monitor 1, Desktop 2 contains a single container with Chrome.
- On Monitor 2, Desktop 1 contains a single container with a terminal.
- Monitor 2, Desktop 2 is empty.


```
Monitor 1
|-- Desktop 1
|   |-- Node (Container - Vertical Split)
|   |   |-- Leaf (Terminal)
|   |   |-- Node (Container - Horizontal Split)
|   |       |-- Leaf (Firefox)
|   |       |-- Leaf (VSCode)
|
|-- Desktop 2
|   |-- Node (Container)
|       |-- Leaf (Chrome)
|
Monitor 2
|-- Desktop 1
|    |-- Node (Container)
|        |-- Leaf (Terminal)
|
|-- Desktop 2
```

-------------------------------------------
-------------------------------------------