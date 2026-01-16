# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a dotfiles repository managed with GNU stow. The repository structure mirrors the home directory layout - files here are symlinked directly to `~` using stow.

## Using GNU Stow

To symlink all configurations to the home directory:
```bash
cd ~/.dotfiles
stow .
```

To unlink:
```bash
stow -D .
```

The flat structure means stow treats the entire repo as a single package, symlinking all dotfiles at once.

## Configurations Included

- **Shell**: `.zshrc` (Oh My Zsh with robbyrussell theme)
- **Editor**: `.config/nvim/` (Neovim with Lazy.nvim plugin manager)
- **Git**: `.gitconfig` (Git Credential Manager, LFS enabled)
- **Window Manager**: `.aerospace.toml` (AeroSpace tiling WM for macOS)
- **Terminal**: `.config/ghostty/config` (Ghostty with Rose Pine Dawn theme)

## Neovim Structure

The Neovim config uses Lazy.nvim and follows this pattern:
- `init.lua` - Entry point, bootstraps Lazy.nvim
- `lua/jack/init.lua` - Requires remap and set modules
- `lua/jack/set.lua` - Editor settings (line numbers, indentation)
- `lua/jack/remap.lua` - Key mappings (leader is Space)
- `lua/jack/plugins/` - Plugin configurations (one file per plugin)

To add a new Neovim plugin, create a file in `lua/jack/plugins/` returning a Lazy.nvim plugin spec.

## Key Conventions

- Vim-style keybindings throughout (hjkl navigation in AeroSpace)
- Leader key is Space in Neovim
- macOS-specific tooling (AeroSpace, Ghostty)
