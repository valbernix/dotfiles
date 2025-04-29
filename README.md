# Dotfiles

<!-- vim-markdown-toc GFM -->

* [Tmux](#tmux)
    * [Mouse](#mouse)
    * [Reload](#reload)
    * [Sessions](#sessions)
    * [Splits](#splits)
    * [Yank](#yank)
* [Vim](#vim)
    * [Append](#append)
    * [Completion](#completion)
    * [Duplicate](#duplicate)
    * [Git](#git)
    * [Goto](#goto)
    * [Goyo](#goyo)
    * [Mouse](#mouse-1)
    * [Navigation](#navigation)
    * [Pairing](#pairing)
    * [Reload](#reload-1)
    * [Resize](#resize)
    * [Tables](#tables)
* [Plugins](#plugins)
    * [vim-markdown-toc](#vim-markdown-toc)
    * [vim-surround](#vim-surround)
    * [vimtex](#vimtex)

<!-- vim-markdown-toc -->

## Tmux

### Mouse

| Shortcut                  | Action |
| ------------------------- | ------ |
| `CTRL + a`&nbsp;&nbsp;`m` | Toggle |

### Reload

| Shortcut                  | Action                             |
| ------------------------- | ---------------------------------- |
| `CTRL + a`&nbsp;&nbsp;`r` | Apply settings from `~/.tmux.conf` |

### Sessions

| Shortcut                  | Action                                     |
| ------------------------- | ------------------------------------------ |
| `CTRL + a`&nbsp;&nbsp;`l` | Switch to the **next** running session     |
| `CTRL + a`&nbsp;&nbsp;`h` | Switch to the **previous** running session |
| `CTRL + a`&nbsp;&nbsp;`s` | Switch between running sessions            |

### Splits

| Shortcut                   | Action                    |
| -------------------------- | ------------------------- |
| `CTRL + a`&nbsp;&nbsp;`\|` | Split window horizontally |
| `CTRL + a`&nbsp;&nbsp;`-`  | Split window vertically   |

### Yank

| Shortcut                  | Mode     | Action                                     |
| --------                  | ------   | ------------------------------------------ |
| `y`                       | `COPY`   | Copy the selected text in system clipboard |
| `CTRL + a`&nbsp;&nbsp;`v` | `NORMAL` | Start selection inside copy mode           |

## Vim

### Append

| Shortcut      | Mode     | Action                     |
| ------------- | -------- | -------------------------- |
| `Shift + Tab` | `INSERT` | Append text at end of line |

### Completion

| Shortcut | Mode     | Action                 |
| -------- | -------- | ---------------------- |
| `Tab`    | `INSERT` | Select completion item |

### Duplicate

| Shortcut   | Mode     | Action         |
| ---------- | -------- | -------------- |
| `CTRL + d` | `NORMAL` | Duplicate line |

### Git

| Shortcut     | Mode     | Action                         |
| ------------ | -------- | ------------------------------ |
| `SPACE + st` | `NORMAL` | Run `git status`               |
| `SPACE + gr` | `NORMAL` | Run `git log --oneline --grah` |
| `SPACE + br` | `NORMAL` | Run `git branch`               |
| `SPACE + df` | `NORMAL` | Run `git diff`                 |

### Goto

| Shortcut | Mode     | Action                      |
| -------- | -------- | --------------------------- |
| `gd`     | `NORMAL` | Jump to **definition**      |
| `gy`     | `NORMAL` | Jump to **type definition** |
| `gi`     | `NORMAL` | Jump to **implementation**  |
| `gr`     | `NORMAL` | Jump to **references**      |

### Goyo

| Shortcut   | Mode     | Action                       |
| ---------- | -------- | ---------------------------- |
| `CTRL + g` | `NORMAL` | Toggle distraction-free mode |

### Mouse

| Shortcut    | Mode     | Action |
| ----------- | -------- | ------ |
| `SPACE + m` | `NORMAL` | Toggle |

### Navigation

| Shortcut    | Mode     | Action                               |
| ----------- | -------- | ------------------------------------ |
| `CTRL + n`  | `NORMAL` | Search Git-tracked files using Fuzzy |
| `CTRL + p`  | `NORMAL` | Switch between open buffers          |
| `SPACE + n` | `NORMAL` | Open file explorer                   |

### Pairing

| Shortcut   | Mode  | Action           |
| ---------- | ----- | ---------------- |
| `CTRL + a` | `ALL` | Toggle AutoPairs |

### Reload

| Shortcut    | Mode     | Action                         |
| ----------- | -------- | ------------------------------ |
| `SPACE + r` | `NORMAL` | Apply settings from `~/.vimrc` |

### Resize

| Shortcut        | Mode     | Action                            |
| --------------- | -------- | --------------------------------- |
| `SPACE + Left`  | `NORMAL` | Decrease **vertical** size by 5   |
| `SPACE + Right` | `NORMAL` | Increase **vertical** size by 5   |
| `SPACE + Up`    | `NORMAL` | Increase **horizontal** size by 5 |
| `SPACE + Down`  | `NORMAL` | Decrease **horizontal** size by 5 |

### Tables

| Shortcut        | Mode     | Action            |
| --------------- | -------- | ----------------- |
| `SPACE + table` | `NORMAL` | Toggle table mode |

## Plugins

### vim-markdown-toc

| Command      | Action                                |
| ------------ | ------------------------------------- |
| `:GenTocGFM` | Generate toc in [GFM][gfm] link style |
| `:UpdateToc` | Update toc manually                   |

> :bulb: Note, running `:UpdateToc` only works when `g:vmt_auto_update_on_save` is turned off.

### vim-surround

| Shortcut | Mode     | Action                                     |
| -------- | -------- | ------------------------------------------ |
| `ysiw"`  | `NORMAL` | Wrap the current word in double quotes     |
| `ysiw(`  | `NORMAL` | Wrap the current word in parentheses       |
| `ysiw'`  | `NORMAL` | Wrap the current word in single quotes     |
| `yssb`   | `NORMAL` | Surround the whole line with parentheses   |
| `yssB`   | `NORMAL` | Surround  the whole line with curly braces |

### vimtex

| Shortcut     | Mode     | Action                                     |
| ------------ | -------- | ------------------------------------------ |
| `SPACE + ll` | `NORMAL` | Compile the LaTeX document using `latexmk` |
| `SPACE + lv` | `NORMAL` | Open the compiled PDF                      |
| `SPACE + lc` | `NORMAL` | Remove auxiliary files                     |
| `SPACE + le` | `NORMAL` | See errors                                 |

<!-- Links -->

[gfm]: https://github.github.com/gfm/
