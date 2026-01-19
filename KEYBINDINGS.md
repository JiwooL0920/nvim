# Neovim Keybindings Reference

This document provides a comprehensive guide to all custom keybindings configured in your Neovim setup.

## Leader Key
**Leader key is set to `<Space>`**

---

## Table of Contents
- [General Keybindings](#general-keybindings)
- [Window Management](#window-management)
- [Tab Management](#tab-management)
- [File Explorer (nvim-tree)](#file-explorer-nvim-tree)
- [Telescope (Fuzzy Finder)](#telescope-fuzzy-finder)
- [LSP (Language Server)](#lsp-language-server)
- [Autocompletion (nvim-cmp)](#autocompletion-nvim-cmp)
- [GitHub Copilot](#github-copilot)
- [OpenCode (AI Assistant)](#opencode-ai-assistant)
- [Text Manipulation](#text-manipulation)
- [Comments](#comments)
- [Surround](#surround)
- [Todo Comments](#todo-comments)
- [Trouble (Diagnostics)](#trouble-diagnostics)
- [Git (LazyGit)](#git-lazygit)
- [Split Maximizer](#split-maximizer)

---

## General Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Insert | `ii` | `<ESC>` | Exit insert mode |
| Normal | `<leader>nh` | `:nohl` | Clear search highlights |
| Normal | `<leader>+` | `<C-a>` | Increment number under cursor |
| Normal | `<leader>-` | `<C-x>` | Decrement number under cursor |

---

## Window Management

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>sv` | `<C-w>v` | Split window vertically |
| Normal | `<leader>sh` | `<C-w>s` | Split window horizontally |
| Normal | `<leader>se` | `<C-w>=` | Make splits equal size |
| Normal | `<leader>sx` | `:close` | Close current split |
| Normal | `<leader>sm` | `:MaximizerToggle` | Maximize/minimize current split |

---

## Tab Management

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>to` | `:tabnew` | Open new tab |
| Normal | `<leader>tx` | `:tabclose` | Close current tab |
| Normal | `<leader>tn` | `:tabn` | Go to next tab |
| Normal | `<leader>tp` | `:tabp` | Go to previous tab |
| Normal | `<leader>tf` | `:tabnew %` | Open current buffer in new tab |

---

## File Explorer (nvim-tree)

### Global Keybindings

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>ee` | `:NvimTreeToggle` | Toggle file explorer |
| Normal | `<leader>ef` | `:NvimTreeFindFileToggle` | Toggle file explorer on current file |
| Normal | `<leader>ec` | `:NvimTreeCollapse` | Collapse file explorer |
| Normal | `<leader>er` | `:NvimTreeRefresh` | Refresh file explorer |

### Inside nvim-tree

The file explorer uses default nvim-tree keybindings. Some common ones:
- `<CR>` or `o` - Open file/folder
- `a` - Create new file/folder
- `d` - Delete file/folder
- `r` - Rename file/folder
- `x` - Cut file/folder
- `c` - Copy file/folder
- `p` - Paste file/folder
- `y` - Copy name
- `Y` - Copy relative path
- `gy` - Copy absolute path
- `q` - Close nvim-tree

---

## Telescope (Fuzzy Finder)

### Normal Mode

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>ff` | `:Telescope find_files` | Fuzzy find files in cwd |
| Normal | `<leader>fr` | `:Telescope oldfiles` | Fuzzy find recent files |
| Normal | `<leader>fs` | `:Telescope live_grep` | Find string in cwd (live grep) |
| Normal | `<leader>fc` | `:Telescope grep_string` | Find string under cursor in cwd |
| Normal | `<leader>ft` | `:TodoTelescope` | Find todos |

### Inside Telescope (Insert Mode)

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Insert | `<C-k>` | Move up | Move to previous result |
| Insert | `<C-j>` | Move down | Move to next result |
| Insert | `<C-q>` | Send to quickfix | Send selected to quickfix and open Trouble |
| Insert | `<C-t>` | Toggle Trouble | Open selected in Trouble |

---

## LSP (Language Server)

These keybindings are available when LSP is attached to a buffer:

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `gR` | `:Telescope lsp_references` | Show LSP references |
| Normal | `gD` | `vim.lsp.buf.declaration` | Go to declaration |
| Normal | `gd` | `:Telescope lsp_definitions` | Show LSP definitions |
| Normal | `gi` | `:Telescope lsp_implementations` | Show LSP implementations |
| Normal | `gt` | `:Telescope lsp_type_definitions` | Show LSP type definitions |
| Normal/Visual | `<leader>ca` | `vim.lsp.buf.code_action` | See available code actions |
| Normal | `<leader>rn` | `vim.lsp.buf.rename` | Smart rename |
| Normal | `<leader>D` | `:Telescope diagnostics bufnr=0` | Show buffer diagnostics |
| Normal | `<leader>d` | `vim.diagnostic.open_float` | Show line diagnostics |
| Normal | `[d` | `vim.diagnostic.goto_prev` | Go to previous diagnostic |
| Normal | `]d` | `vim.diagnostic.goto_next` | Go to next diagnostic |
| Normal | `K` | `vim.lsp.buf.hover` | Show documentation for cursor |
| Normal | `<leader>rs` | `:LspRestart` | Restart LSP |

---

## Autocompletion (nvim-cmp)

These keybindings work in Insert mode when the completion menu is open:

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Insert | `<C-k>` | Select previous | Previous completion item |
| Insert | `<C-j>` | Select next | Next completion item |
| Insert | `<C-b>` | Scroll up | Scroll docs up |
| Insert | `<C-f>` | Scroll down | Scroll docs down |
| Insert | `<C-Space>` | Complete | Trigger completion |
| Insert | `<C-e>` | Abort | Close completion menu |
| Insert | `<CR>` | Confirm | Confirm selection |

---

## GitHub Copilot

### Suggestions (Insert Mode)

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Insert | `<C-J>` | Accept | Accept Copilot suggestion |
| Insert | `<M-]>` | Next | Next Copilot suggestion |
| Insert | `<M-[>` | Previous | Previous Copilot suggestion |
| Insert | `<C-]>` | Dismiss | Dismiss Copilot suggestion |

### Panel

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<M-CR>` | Open panel | Open Copilot panel |

### Inside Copilot Panel

| Keybinding | Action | Description |
|------------|--------|-------------|
| `[[` | Jump previous | Jump to previous suggestion |
| `]]` | Jump next | Jump to next suggestion |
| `<CR>` | Accept | Accept suggestion |
| `gr` | Refresh | Refresh suggestions |

---

## OpenCode (AI Assistant)

OpenCode integrates an AI assistant with Neovim for editor-aware research, reviews, and code requests.

### Core Actions

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal/Terminal | `<leader>oo` | Toggle | Toggle opencode session |
| Normal/Visual | `<leader>oa` | Ask | Ask opencode with current context |
| Normal/Visual | `<leader>os` | Select | Select from prompts/actions |
| Normal/Visual | `go` | Operator | Opencode operator (use with motion) |

### Built-in Prompts

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal/Visual | `<leader>or` | Review | Review code for correctness |
| Normal/Visual | `<leader>oe` | Explain | Explain code and its context |
| Normal/Visual | `<leader>of` | Fix | Fix diagnostics/issues |
| Normal/Visual | `<leader>ot` | Test | Generate tests for code |
| Normal/Visual | `<leader>od` | Document | Add documentation comments |
| Normal/Visual | `<leader>oi` | Implement | Implement code/feature |

### Session Management

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>on` | New session | Start a new opencode session |
| Normal | `<leader>ol` | List sessions | List all opencode sessions |

### Context Placeholders

When using `ask()`, you can use these placeholders:
- `@this` - Visual selection or cursor position
- `@buffer` - Current buffer content
- `@buffers` - All open buffers
- `@diagnostics` - LSP diagnostics
- `@diff` - Git diff
- `@quickfix` - Quickfix list items

### Operator Usage Examples

The `go` operator works like any Vim operator:
- `goip` - Send inner paragraph to opencode
- `goiw` - Send inner word to opencode
- `go3j` - Send current line + 3 lines down
- `goG` - Send from cursor to end of file
- Visual select + `go` - Send selection to opencode

---

## Text Manipulation

### Substitute Plugin

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `s` | Substitute operator | Substitute with motion |
| Normal | `ss` | Substitute line | Substitute entire line |
| Normal | `S` | Substitute to EOL | Substitute to end of line |
| Visual | `s` | Substitute visual | Substitute in visual selection |

**Example usage:**
- `siw` - Substitute inner word
- `sip` - Substitute inner paragraph
- `ss` - Substitute current line

---

## Comments

Uses the **Comment.nvim** plugin with default keybindings:

### Normal Mode

| Keybinding | Action | Description |
|------------|--------|-------------|
| `gcc` | Toggle line | Toggle comment on current line |
| `gbc` | Toggle block | Toggle block comment |
| `gc{motion}` | Comment motion | Comment using motion (e.g., `gcap` for paragraph) |
| `gb{motion}` | Block comment motion | Block comment using motion |

### Visual Mode

| Keybinding | Action | Description |
|------------|--------|-------------|
| `gc` | Toggle comment | Toggle comment on selection |
| `gb` | Toggle block | Toggle block comment on selection |

**Common examples:**
- `gcap` - Comment a paragraph
- `gc3j` - Comment current line + 3 lines down
- `gcG` - Comment from cursor to end of file

---

## Surround

Uses the **nvim-surround** plugin with default keybindings:

### Normal Mode

| Keybinding | Action | Description |
|------------|--------|-------------|
| `ys{motion}{char}` | Add surround | Add surrounding around motion |
| `ds{char}` | Delete surround | Delete surrounding |
| `cs{old}{new}` | Change surround | Change surrounding from old to new |

### Visual Mode

| Keybinding | Action | Description |
|------------|--------|-------------|
| `S{char}` | Surround selection | Add surrounding to visual selection |

**Common examples:**
- `ysiw"` - Surround inner word with "
- `yss)` - Surround entire line with ()
- `ds"` - Delete surrounding "
- `cs"'` - Change surrounding " to '
- `cs)]` - Change surrounding ) to ]
- Visual select + `S<p>` - Wrap selection in `<p>` tags

---

## Todo Comments

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `]t` | Next todo | Jump to next todo comment |
| Normal | `[t` | Previous todo | Jump to previous todo comment |
| Normal | `<leader>ft` | Find todos | Search todos with Telescope |

**Supported todo keywords:**
- `TODO:` - Something to do
- `HACK:` - Hacky solution
- `WARN:` - Warning
- `PERF:` - Performance issue
- `NOTE:` - Note
- `FIX:` or `FIXME:` - Something to fix
- `BUG:` - Bug

---

## Trouble (Diagnostics)

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>xw` | `:Trouble diagnostics toggle` | Toggle workspace diagnostics |
| Normal | `<leader>xd` | `:Trouble diagnostics toggle filter.buf=0` | Toggle document diagnostics |
| Normal | `<leader>xq` | `:Trouble quickfix toggle` | Toggle quickfix list |
| Normal | `<leader>xl` | `:Trouble loclist toggle` | Toggle location list |
| Normal | `<leader>xt` | `:Trouble todo toggle` | Toggle todos in Trouble |

---

## Git (LazyGit)

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>lg` | `:LazyGit` | Open LazyGit |

**LazyGit is a terminal UI for git commands. Once opened, it has its own keybindings.**

---

## Split Maximizer

| Mode | Keybinding | Action | Description |
|------|------------|--------|-------------|
| Normal | `<leader>sm` | `:MaximizerToggle` | Maximize/minimize current split window |

---

## Quick Reference Card

### Most Important Keybindings

```
LEADER = <Space>

File Navigation:
  <leader>ff  - Find files
  <leader>fs  - Find string (grep)
  <leader>ee  - Toggle file explorer

Window/Split:
  <leader>sv  - Split vertically
  <leader>sh  - Split horizontally
  <leader>sm  - Maximize/minimize split

LSP:
  gd          - Go to definition
  gr          - Show references (via gR)
  K           - Show hover docs
  <leader>ca  - Code actions
  <leader>rn  - Rename symbol

Diagnostics:
  ]d          - Next diagnostic
  [d          - Previous diagnostic
  <leader>xw  - Workspace diagnostics

Git:
  <leader>lg  - Open LazyGit

Comments:
  gcc         - Toggle line comment
  gc{motion}  - Comment motion

Completion:
  <C-Space>   - Trigger completion
  <C-j>/<C-k> - Navigate completion
  <CR>        - Confirm

Copilot:
  <C-J>       - Accept suggestion
  <C-]>       - Dismiss suggestion

OpenCode:
  <leader>oo  - Toggle opencode
  <leader>oa  - Ask with context
  <leader>os  - Select action
  <leader>or  - Review code
  <leader>oe  - Explain code
  go{motion}  - Operator (e.g., goip)
```

---

## Tips

1. **Which-key Integration**: After pressing the leader key (`<Space>`), wait 500ms to see available keybindings via which-key popup.

2. **Insert Mode Escape**: Use `ii` instead of `<ESC>` for faster exit from insert mode.

3. **Number Increment/Decrement**: Position cursor on a number and use `<leader>+` or `<leader>-`.

4. **Telescope Navigation**: In Telescope, use `<C-j>` and `<C-k>` instead of arrow keys for faster navigation.

5. **LSP Features**: Most LSP features are prefixed with `g` (go to) or use the leader key for actions.

6. **Trouble Integration**: Both Telescope and LSP diagnostics integrate with Trouble for better error navigation.

---

## Configuration Files

All keybindings are defined in:
- `lua/jiwoo/core/keymaps.lua` - Core keymaps
- Plugin-specific configs in `lua/jiwoo/plugins/*.lua`

To modify keybindings, edit the respective configuration files and restart Neovim or run `:source %`.
