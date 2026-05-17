# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a **VimScript-based** Neovim configuration (no Lua) using **vim-plug** as the plugin manager. It is dual-purpose: `init.vim` conditionally loads either the Neovim config (`vim/`) or a JetBrains IdeaVim config (`idea/`) based on whether `has('ide')` is true.

## Structure

- `init.vim` — Entry point; sources `settings.vim`, then branches on `has('ide')`
- `settings.vim` — Global editor settings (tabs, search, encoding, mouse)
- `vim/` — Neovim-specific: `plugins.vim`, `coc.vim`, `keymap.vim`, `.vimspector.json`
- `idea/` — IdeaVim-specific: `plugins.vim`, `idea.vim`, `keymap.vim`

## Plugin Management

Plugins are defined in `vim/plugins.vim` using vim-plug syntax. To install/update plugins, run inside Neovim:

```
:PlugInstall
:PlugUpdate
:PlugClean
```

## Key Plugins and Their Roles

- **coc.nvim** — LSP client (completion, diagnostics, go-to, rename, format). Config is in `vim/coc.vim`
- **nvim-treesitter** — Syntax highlighting
- **fzf / fzf.vim** — Fuzzy file/buffer finding
- **NERDTree** — File explorer (with git status and devicons)
- **vimspector** — Debugger; `.vimspector.json` in `vim/` configures Node.js/ts-node launch
- **vim-autoformat** — Formatting via external tools (`<leader>fmt`)
- **tagbar** — Symbol browser (`<leader>ss`)

## Key Keybindings (Neovim)

Leader key is `<Space>`.

| Key | Action |
|-----|--------|
| `Shift+j/k` | Navigate buffers |
| `gd`, `gy`, `gi`, `gr` | CoC: definition, type, implementation, references |
| `K` | CoC: show documentation |
| `[g` / `]g` | CoC: previous/next diagnostic |
| `<leader>rn` | CoC: rename symbol |
| `<leader>f` | CoC: format selection |
| `<leader>a`, `<leader>ac` | CoC: code actions |
| `<leader>sf` / `<leader>sb` | FZF: files / buffers |
| `<leader>n` | Focus NERDTree |
| `<leader>bp` | Vimspector: toggle breakpoint |
| `<leader>db` | Vimspector: continue |
| `F8` / `F9` | Vimspector: step over / step into |

## CoC Extensions

CoC handles LSP; language-specific extensions are installed separately via `:CocInstall coc-<lang>`. The `.vimspector.json` targets `${workspaceFolder}/generator.ts` for Node.js debugging with ts-node.
