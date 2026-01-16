# Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
# Clone to home directory
git clone <repo-url> ~/dotfiles
cd ~/dotfiles

# Symlink everything to ~
stow .

# Unlink everything
stow -D .
```

## What's Included

- Shell: `.zshrc`
- Neovim: `.config/nvim/`
- Git: `.gitconfig`
- AeroSpace: `.aerospace.toml`
- Ghostty: `.config/ghostty/`
