# Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Things to Install on a New Machine

Install the Xcode command-line tools and [Homebrew](https://brew.sh/) first:

```bash
xcode-select --install
```

Then install the command-line tools and applications used by these dotfiles:

```bash
brew install stow neovim tmux git-lfs
brew install --cask aerospace ghostty git-credential-manager
```

Also install:

- [Oh My Zsh](https://ohmyz.sh/) at `~/.oh-my-zsh`
- [nvm](https://github.com/nvm-sh/nvm) at `~/.nvm`
- [TPM](https://github.com/tmux-plugins/tpm) for tmux plugins:

  ```bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  ```

## Setup

```bash
# Clone to home directory
git clone https://github.com/jackopenn/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Symlink everything to ~
stow .

# Initialize Git LFS
git lfs install

# Unlink everything
stow -D .
```

After setup:

- Open Neovim once to bootstrap Lazy.nvim and install the configured plugins and language servers.
- Start tmux and press `Ctrl-a`, then `I`, to install its plugins.
- Open AeroSpace and grant the requested macOS Accessibility permission.

## What's Included

- Shell: `.zshrc`
- Neovim: `.config/nvim/`
- Git: `.gitconfig`
- AeroSpace: `.aerospace.toml`
- Ghostty: `.config/ghostty/`
