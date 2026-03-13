# Neovim Keybindings Cheat Sheet (Leader = Space)

Notation: `<leader>` = `Space`, `C-` = `Ctrl`, `M-` = `Alt`, `<CR>` = `Enter`.

## Essential Vim (worth knowing)

| Keybinding | Action |
| --- | --- |
| `:w` / `:q` / `:wq` | Save / quit / save+quit |
| `u` / `C-r` | Undo / redo |
| `dd` / `yy` / `p` / `P` | Cut line / copy line / paste after/before |
| `ciw` | Change inner word (great for quick edits) |
| `diw` | Delete inner word |
| `yiw` | Yank inner word |
| `%` | Jump to matching `()`, `{}`, `[]` |
| `gg` / `G` | Top / bottom of file |
| `/` then `n` / `N` | Search forward; next/prev match |
| `v` / `V` | Visual / visual line selection |

## Navigation & Movement (windows, splits, tabs)

| Keybinding | Action |
| --- | --- |
| `ii` (insert) | Exit insert mode (acts like `Esc`) |
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |
| `<leader>sm` | Maximize/minimize current split |
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |
| `<leader>tf` | Open current buffer in a new tab |
| `gt` / `gT` | Next / previous tab (Vim built-in) |
| `<leader>nh` | Clear search highlights (`:nohl`) |
| `<leader>+` | Increment number under cursor |
| `<leader>-` | Decrement number under cursor |

## File Explorer (nvim-tree)

| Keybinding | Action |
| --- | --- |
| `<leader>ee` | Toggle file explorer |
| `<leader>ef` | Reveal current file in explorer |
| `<leader>ec` | Collapse explorer |
| `<leader>er` | Refresh explorer |

Inside the tree (defaults):

| Keybinding | Action |
| --- | --- |
| `a` | Create file/folder |
| `d` | Delete |
| `r` | Rename |
| `x` / `c` / `p` | Cut / copy / paste |
| `<CR>` / `o` | Open |
| `v` / `s` | Open in vertical / horizontal split |
| `I` | Toggle hidden files |
| `H` | Toggle dotfiles |

## Searching & Finding (Telescope)

Global (think “VS Code Cmd+P / Cmd+Shift+F”):

| Keybinding | Action |
| --- | --- |
| `<leader>ff` | Find files (like VS Code **Cmd+P**) |
| `<leader>fr` | Recent files |
| `<leader>fs` | Live grep in project (like VS Code **Cmd+Shift+F**) |
| `<leader>fc` | Grep word under cursor |
| `<leader>ft` | Find TODOs (TodoTelescope) |

Inside Telescope picker — custom mappings in this config:

| Keybinding | Action |
| --- | --- |
| `C-j` (insert/normal) | Move selection down |
| `C-k` (insert/normal) | Move selection up |
| `C-q` (insert/normal) | Send results to quickfix **and open Trouble** |
| `M-t` (insert/normal) | Toggle Trouble view for Telescope |
| `<CR>` (normal) | Select default |

Inside Telescope picker — built-in defaults (handy to know):

Insert mode:

| Keybinding | Action |
| --- | --- |
| `C-t` | Open selection in a new tab |
| `C-v` | Open in vertical split |
| `C-x` | Open in horizontal split |
| `C-u` / `C-d` | Scroll preview up/down |
| `Esc` | Close picker (or switch to normal mode, depending on your current state) |
| `C-/` | Show Telescope keymap help |

Normal mode:

| Keybinding | Action |
| --- | --- |
| `j` / `k` | Move selection down/up |
| `gg` / `G` | Jump to top/bottom |
| `H` / `M` / `L` | Jump to high/middle/low of list |
| `?` | Show Telescope keymap help |
| `C-t` / `C-v` / `C-x` | Open in tab / vsplit / split |

## Code Intelligence / LSP (when LSP is attached)

| Keybinding | Action |
| --- | --- |
| `gd` | Go to definition (Telescope; jumps if single result) |
| `gf` | Definitions picker **always** (no auto-jump; preview) |
| `gD` | Go to declaration |
| `gR` | Find references (Telescope) |
| `gi` | Go to implementation (Telescope) |
| `gt` | Go to type definition (Telescope) |
| `K` | Hover docs |
| `<leader>rn` | Rename symbol |
| `<leader>ca` (normal/visual) | Code action |
| `<leader>D` | Diagnostics list for current buffer (Telescope) |
| `<leader>d` | Line diagnostics float |
| `[d` / `]d` | Prev/next diagnostic |
| `<leader>rs` | Restart LSP |

## Autocompletion (nvim-cmp)

| Keybinding | Action |
| --- | --- |
| *(no custom mappings listed)* | Completion uses plugin/default mappings for this config |

## Copilot

Copilot suggestions auto-trigger in insert mode.

| Keybinding | Action |
| --- | --- |
| `C-J` (insert) | Accept suggestion |
| `M-]` (insert) | Next suggestion |
| `M-[` (insert) | Previous suggestion |
| `C-]` (insert) | Dismiss suggestion |

Copilot Panel:

| Keybinding | Action |
| --- | --- |
| `M-<CR>` | Open panel |
| `[[` | Previous suggestion (panel) |
| `]]` | Next suggestion (panel) |
| `<CR>` | Accept suggestion (panel) |
| `gr` | Refresh panel |

## OpenCode AI

| Keybinding | Action |
| --- | --- |
| `<leader>oo` | Toggle OpenCode (normal + terminal mode) |
| `C-w` + `h/j/k/l` (terminal) | Navigate away from OpenCode back to editor splits |
| `<leader>oa` (normal/visual) | Ask OpenCode using `@this` context |
| `<leader>os` (normal/visual) | Select an OpenCode action |
| `go` (normal/visual) | OpenCode **operator** (use like a Vim operator over a motion/selection) |
| `<leader>or` (normal/visual) | Review |
| `<leader>oe` (normal/visual) | Explain |
| `<leader>of` (normal/visual) | Fix |
| `<leader>ot` (normal/visual) | Generate tests |
| `<leader>od` (normal/visual) | Document |
| `<leader>oi` (normal/visual) | Implement |
| `<leader>on` | New OpenCode session |
| `<leader>ol` | List OpenCode sessions |

## Git (LazyGit + Gitsigns)

| Keybinding | Action |
| --- | --- |
| `<leader>lg` | Open LazyGit |

Gitsigns — hunk navigation:

| Keybinding | Action |
| --- | --- |
| `]h` / `[h` | Next / previous hunk |

Gitsigns — actions:

| Keybinding | Action |
| --- | --- |
| `<leader>hs` (normal/visual) | Stage hunk |
| `<leader>hr` (normal/visual) | Reset hunk |
| `<leader>hS` | Stage entire buffer |
| `<leader>hR` | Reset entire buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line (full) |
| `<leader>hB` | Toggle current line blame |
| `<leader>hd` | Diff this |
| `<leader>hD` | Diff this against last commit (`~`) |

Gitsigns — text object:

| Keybinding | Action |
| --- | --- |
| `ih` (operator/visual) | Select hunk |

## Code Editing (comment, surround, substitute, format, lint)

Commenting (Comment.nvim defaults):

| Keybinding | Action |
| --- | --- |
| `gcc` | Toggle comment on current line |
| `gc{motion}` | Toggle comment for motion (example: `gcip`) |
| `gc` (visual) | Toggle comment on selection |
| `gbc` | Toggle **block** comment on current line |
| `gb{motion}` | Toggle block comment for motion |
| `gb` (visual) | Toggle block comment on selection |

Surround (nvim-surround defaults):

| Keybinding | Action |
| --- | --- |
| `ys{motion}{char}` | Add surround (example: `ysiw"`) |
| `ds{char}` | Delete surround (example: `ds"`) |
| `cs{old}{new}` | Change surround (example: `cs"'`) |
| `S{char}` (visual) | Surround selection |

Substitute (substitute.nvim):

| Keybinding | Action |
| --- | --- |
| `s{motion}` | Substitute over a motion |
| `ss` | Substitute entire line |
| `S` | Substitute to end of line |
| `s` (visual) | Substitute selection |

Formatting / linting:

| Keybinding | Action |
| --- | --- |
| `<leader>fm` (normal/visual) | Format file or selected range |
| `<leader>l` | Run linting for current file |

## Diagnostics & Trouble

Trouble lists:

| Keybinding | Action |
| --- | --- |
| `<leader>xw` | Toggle Trouble diagnostics (workspace) |
| `<leader>xd` | Toggle Trouble diagnostics (current buffer) |
| `<leader>xq` | Toggle Trouble quickfix |
| `<leader>xl` | Toggle Trouble location list |
| `<leader>xt` | Toggle Trouble TODOs |

TODO comment navigation (todo-comments):

| Keybinding | Action |
| --- | --- |
| `]t` / `[t` | Next / previous TODO comment |

## Session Management (auto-session)

| Keybinding | Action |
| --- | --- |
| `<leader>ws` | Save session for current working directory |
| `<leader>wr` | Restore session for current working directory |

## Misc

Markdown preview:

| Keybinding | Action |
| --- | --- |
| `<leader>mp` | Start Markdown preview |
| `<leader>ms` | Stop Markdown preview |

Which-key:

| Keybinding | Action |
| --- | --- |
| *(press and hold)* `<leader>` | Press `Space` and wait ~500ms to see available leader mappings |

## Pro Tips / Things You Might Not Know

- **which-key:** press `Space` and wait ~500ms to discover keybindings.
- **Sessions:** auto-session can save/restore your whole layout for a folder (`<leader>ws` / `<leader>wr`).
- **Format-on-save:** enabled (Prettier for JS/TS/CSS/HTML/JSON/YAML/MD; Stylua for Lua). Use `<leader>fm` anytime.
- **Linting:** eslint_d runs automatically on file read/save/insert-leave; run manually with `<leader>l`.
- **Gitsigns:** shows `+/-` markers in the sign column; use `]h`/`[h` to hop hunks fast.
- **Relative numbers:** on (great for jumps like `5j`, `12k`).
- **Clipboard:** synced with system clipboard (yank/paste works with your OS copy/paste).
- **Tabs bar:** bufferline is in **tabs** mode (tab strip at the top). Use `<leader>tn`/`<leader>tp` or `gt`/`gT`.
- **Search:** smartcase is on (lowercase searches ignore case; mixed-case searches are case-sensitive).
- **Splits:** open to the right and below (more predictable layout).
- **Indent:** tab width is 2 spaces.
